# Android Auto for Ubuntu - Implementation Roadmap

Based on reverse engineering findings from ZLink v5.4.71

---

## Feasibility Assessment

### ✅ Android Auto - **FEASIBLE**
- Uses standard USB AOA protocol
- Google Protobuf messages (can reverse engineer)
- No special hardware required
- No licensing barriers
- **Recommended Focus**

### ❌ Apple CarPlay - **NOT FEASIBLE**
- Requires MFi authentication chip ($3000+ certification)
- FairPlay DRM (proprietary, Apple keys required)
- iAP2 protocol under NDA
- Legal risks with reverse engineering
- **Skip for now**

---

## Phase 1: Foundation (Weeks 1-2)

### Set Up Development Environment

```bash
# Install dependencies
sudo apt install \
    libusb-1.0-0-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libasound2-dev \
    libpulse-dev \
    qtbase5-dev \
    qtmultimedia5-dev \
    cmake \
    g++ \
    pkg-config
```

### Study Existing Projects

1. **OpenAuto** - https://github.com/f1xpl/openauto
   - Already implements basic Android Auto
   - Qt-based GUI
   - USB AOA handling
   - **Use as starting point**

2. **aasdk** - https://github.com/f1xpl/aasdk
   - Android Auto SDK library
   - Protobuf message definitions
   - **Study for protocol details**

### Extract Protobuf Definitions

From ZLink analysis, we need to define:

```protobuf
syntax = "proto3";

package zj.aa;

message WifiProjectionService {
    int32 id = 1;
    // Additional fields TBD
}

message KeyBindingRequest {
    bytes key_data = 1;
    // Additional fields TBD
}

message KeyBindingResponse {
    bool accepted = 1;
    bytes response_data = 2;
    // Additional fields TBD
}

message InputReport {
    enum Type {
        KEY = 0;
        TOUCH = 1;
        RELATIVE = 2;
    }
    
    Type type = 1;
    int32 keycode = 2;
    int32 x = 3;
    int32 y = 4;
    int32 action = 5;
}
```

**Action**: Use Ghidra to disassemble protobuf pack/unpack functions and extract full field definitions.

---

## Phase 2: USB Communication (Weeks 3-4)

### Implement USB AOA

Based on ZLink findings:

```c
#include <libusb-1.0/libusb.h>

// USB Vendor/Product IDs for AOA mode
#define GOOGLE_VID 0x18D1
#define AOA_ACCESSORY_PID 0x2D00  // Range: 0x2D00-0x2D05

struct aoa_device {
    libusb_device_handle *handle;
    int interface_number;
    uint8_t ep_in;
    uint8_t ep_out;
};

int aoa_init() {
    libusb_init(NULL);
    // Find Android phone
    // Switch to accessory mode
    // Open bulk endpoints
}

int aoa_send(struct aoa_device *dev, uint8_t *data, size_t len) {
    int transferred;
    return libusb_bulk_transfer(dev->handle, dev->ep_out, 
                                data, len, &transferred, 1000);
}

int aoa_receive(struct aoa_device *dev, uint8_t *buffer, size_t len) {
    int transferred;
    return libusb_bulk_transfer(dev->handle, dev->ep_in,
                                buffer, len, &transferred, 1000);
}
```

### Socket Server

Create multi-channel server based on ZLink architecture:

```c
#define CONTROL_PORT 3152
#define VIDEO_PORT   5000
#define AUDIO_PORT   5001

struct aa_server {
    int control_sock;
    int video_sock;
    int audio_sock;
    
    pthread_t control_thread;
    pthread_t video_thread;
    pthread_t audio_thread;
};

int aa_server_start(struct aa_server *server) {
    // Create listening sockets
    server->control_sock = create_tcp_server(CONTROL_PORT);
    server->video_sock = create_tcp_server(VIDEO_PORT);
    server->audio_sock = create_tcp_server(AUDIO_PORT);
    
    // Start handler threads
    pthread_create(&server->control_thread, NULL, control_handler, server);
    pthread_create(&server->video_thread, NULL, video_handler, server);
    pthread_create(&server->audio_thread, NULL, audio_handler, server);
    
    return 0;
}
```

---

## Phase 3: Video Decoding (Weeks 5-6)

### H.264 Decoder

Use ffmpeg/libav based on ZLink video handling:

```c
#include <libavcodec/avcodec.h>
#include <libavformat/avformat.h>
#include <libswscale/swscale.h>

struct video_decoder {
    AVCodecContext *codec_ctx;
    AVFrame *frame;
    struct SwsContext *sws_ctx;
    int width;  // 1024
    int height; // 600
};

int video_decoder_init(struct video_decoder *dec) {
    AVCodec *codec = avcodec_find_decoder(AV_CODEC_ID_H264);
    dec->codec_ctx = avcodec_alloc_context3(codec);
    
    dec->codec_ctx->width = 1024;
    dec->codec_ctx->height = 600;
    dec->codec_ctx->pix_fmt = AV_PIX_FMT_YUV420P;
    
    avcodec_open2(dec->codec_ctx, codec, NULL);
    
    dec->frame = av_frame_alloc();
    
    // Setup scaler for window rendering
    dec->sws_ctx = sws_getContext(
        1024, 600, AV_PIX_FMT_YUV420P,
        1024, 600, AV_PIX_FMT_RGB24,
        SWS_BILINEAR, NULL, NULL, NULL
    );
    
    return 0;
}

int video_decoder_decode(struct video_decoder *dec, uint8_t *data, size_t len) {
    AVPacket packet;
    av_init_packet(&packet);
    packet.data = data;
    packet.size = len;
    
    int ret = avcodec_send_packet(dec->codec_ctx, &packet);
    if (ret < 0) return ret;
    
    ret = avcodec_receive_frame(dec->codec_ctx, dec->frame);
    if (ret == 0) {
        // Frame decoded successfully
        // Render to window (Phase 4)
    }
    
    return ret;
}
```

---

## Phase 4: GUI Window (Weeks 7-8)

### Qt Windowed Application

Based on OpenAuto architecture + ZLink findings:

```cpp
#include <QApplication>
#include <QMainWindow>
#include <QWidget>
#include <QPainter>

class AndroidAutoWindow : public QMainWindow {
    Q_OBJECT

public:
    AndroidAutoWindow(QWidget *parent = nullptr) 
        : QMainWindow(parent) 
    {
        // Set window properties
        setWindowTitle("Android Auto");
        setMinimumSize(1024, 600);
        
        // Create video widget
        video_widget = new VideoWidget(this);
        setCentralWidget(video_widget);
        
        // Setup touch events
        video_widget->installEventFilter(this);
    }
    
protected:
    bool eventFilter(QObject *obj, QEvent *event) override {
        if (event->type() == QEvent::MouseButtonPress) {
            QMouseEvent *mouseEvent = static_cast<QMouseEvent*>(event);
            handleTouch(mouseEvent->x(), mouseEvent->y(), ACTION_DOWN);
            return true;
        }
        // Handle MOVE, UP events
        return QMainWindow::eventFilter(obj, event);
    }
    
private:
    void handleTouch(int x, int y, int action) {
        // Create InputReport protobuf message
        zj::aa::InputReport report;
        report.set_type(zj::aa::InputReport::TOUCH);
        report.set_x(x);
        report.set_y(y);
        report.set_action(action);
        
        // Serialize and send to phone
        std::string serialized;
        report.SerializeToString(&serialized);
        send_to_phone(serialized.c_str(), serialized.size());
    }
    
    VideoWidget *video_widget;
};

class VideoWidget : public QWidget {
public:
    void setFrame(QImage frame) {
        current_frame = frame;
        update();
    }
    
protected:
    void paintEvent(QPaintEvent *event) override {
        QPainter painter(this);
        if (!current_frame.isNull()) {
            painter.drawImage(rect(), current_frame);
        }
    }
    
private:
    QImage current_frame;
};
```

---

## Phase 5: Audio (Weeks 9-10)

### Audio Playback

Use PulseAudio based on ZLink audio handling:

```c
#include <pulse/simple.h>
#include <pulse/error.h>

struct audio_player {
    pa_simple *stream;
    pa_sample_spec spec;
};

int audio_player_init(struct audio_player *player) {
    player->spec.format = PA_SAMPLE_S16LE;
    player->spec.channels = 2;
    player->spec.rate = 44100;
    
    int error;
    player->stream = pa_simple_new(
        NULL,               // Default server
        "Android Auto",     // Application name
        PA_STREAM_PLAYBACK,
        NULL,               // Default device
        "Android Auto Audio",
        &player->spec,
        NULL,               // Default channel map
        NULL,               // Default buffering
        &error
    );
    
    return (player->stream != NULL) ? 0 : -1;
}

int audio_player_play(struct audio_player *player, 
                      const uint8_t *data, size_t len) 
{
    int error;
    if (pa_simple_write(player->stream, data, len, &error) < 0) {
        return -1;
    }
    return 0;
}
```

### Microphone Capture

```c
struct audio_recorder {
    pa_simple *stream;
    pa_sample_spec spec;
};

int audio_recorder_init(struct audio_recorder *rec) {
    rec->spec.format = PA_SAMPLE_S16LE;
    rec->spec.channels = 1;  // Mono for voice
    rec->spec.rate = 16000;   // 16kHz for voice
    
    int error;
    rec->stream = pa_simple_new(
        NULL,
        "Android Auto",
        PA_STREAM_RECORD,
        NULL,
        "Voice Input",
        &rec->spec,
        NULL, NULL, &error
    );
    
    return (rec->stream != NULL) ? 0 : -1;
}

int audio_recorder_read(struct audio_recorder *rec,
                        uint8_t *buffer, size_t len)
{
    int error;
    if (pa_simple_read(rec->stream, buffer, len, &error) < 0) {
        return -1;
    }
    
    // Send to phone via audio socket
    send_audio_to_phone(buffer, len);
    
    return 0;
}
```

---

## Phase 6: Wireless Mode (Weeks 11-12)

### Bluetooth Pairing

Based on ZLink bluetooth integration:

```c
// Use BlueZ D-Bus API
#include <bluetooth/bluetooth.h>
#include <bluetooth/hci.h>
#include <bluetooth/rfcomm.h>

struct bt_pairing {
    char device_name[32];  // "Android Auto"
    bdaddr_t local_addr;
    int rfcomm_channel;
};

int bt_start_discoverable(struct bt_pairing *bt) {
    // Set device name
    strcpy(bt->device_name, "Ubuntu Android Auto");
    
    // Make discoverable
    // Wait for phone to pair
    // Exchange WiFi credentials
    
    return 0;
}
```

### WiFi Hotspot

```c
// Create hostapd configuration
int wifi_create_hotspot(const char *ssid, const char *password) {
    // Write hostapd.conf
    FILE *f = fopen("/tmp/hostapd.conf", "w");
    fprintf(f, "interface=wlan0\n");
    fprintf(f, "driver=nl80211\n");
    fprintf(f, "ssid=%s\n", ssid);
    fprintf(f, "hw_mode=g\n");
    fprintf(f, "channel=6\n");
    fprintf(f, "wpa=2\n");
    fprintf(f, "wpa_passphrase=%s\n", password);
    fprintf(f, "wpa_key_mgmt=WPA-PSK\n");
    fclose(f);
    
    // Start hostapd
    system("hostapd /tmp/hostapd.conf &");
    
    return 0;
}
```

### mDNS Advertisement

```c
#include <avahi-client/client.h>
#include <avahi-client/publish.h>

int mdns_advertise_aa() {
    // Advertise Android Auto service
    // Service type: _androidauto._tcp
    // Port: 3152
    
    // Use Avahi library
    // Similar to ZLink: dnssd_register_airplay()
    
    return 0;
}
```

---

## Phase 7: Testing & Refinement (Weeks 13-14)

### Test Plan

1. **USB Connection**
   - Plug in Android phone
   - Verify AOA mode switch
   - Check socket connections

2. **Video Display**
   - Confirm H.264 decoding
   - Check frame rate (~30 FPS)
   - Verify resolution scaling

3. **Touch Input**
   - Click on Android Auto UI
   - Verify input reaches phone
   - Test scrolling, gestures

4. **Audio**
   - Play music
   - Test navigation voice
   - Check microphone for voice commands

5. **Wireless**
   - Pair via Bluetooth
   - Connect to WiFi hotspot
   - Verify same features as wired

---

## Expected Timeline

| Phase | Duration | Deliverable |
|-------|----------|-------------|
| 1. Foundation | 2 weeks | Dev environment + protobuf defs |
| 2. USB | 2 weeks | AOA working, sockets connected |
| 3. Video | 2 weeks | H.264 decoding, display working |
| 4. GUI | 2 weeks | Qt window, touch input |
| 5. Audio | 2 weeks | Playback + microphone |
| 6. Wireless | 2 weeks | BT + WiFi hotspot |
| 7. Testing | 2 weeks | Bug fixes, polish |
| **Total** | **14 weeks** | **Functional Android Auto on Ubuntu** |

---

## Alternative: Contribute to OpenAuto

Instead of building from scratch, **contribute to OpenAuto**:

**Pros**:
- Already has USB AOA
- Qt GUI framework in place
- H.264 decoding working
- Active project

**What's Missing** (from ZLink analysis):
- Wireless mode
- Better touch handling
- Complete protobuf messages
- Audio improvements

**Recommended**: Fork OpenAuto, add missing features using ZLink knowledge.

---

## Resources

- **ZLink Analysis**: `~/Desktop/zlink/analysis/libraries/reports/`
- **OpenAuto**: https://github.com/f1xpl/openauto
- **aasdk**: https://github.com/f1xpl/aasdk
- **Android AOA**: https://source.android.com/devices/accessories/aoa
- **Google Protobuf**: https://developers.google.com/protocol-buffers

---

## Next Immediate Steps

1. **Clone OpenAuto**:
   ```bash
   git clone https://github.com/f1xpl/openauto.git
   cd openauto
   mkdir build && cd build
   cmake ..
   make
   ```

2. **Study codebase**:
   - Compare with ZLink findings
   - Identify gaps
   - Plan contributions

3. **Deep dive Ghidra**:
   - Load `libzjL10001.so` into Ghidra
   - Disassemble protobuf pack/unpack functions
   - Extract full message definitions

4. **Capture network traffic**:
   - Connect phone to actual head unit
   - Use Wireshark to capture packets
   - Analyze real Android Auto protocol

---

**Conclusion**: Building Android Auto for Ubuntu is feasible but requires significant effort. Best approach is contributing to OpenAuto using knowledge from ZLink reverse engineering.

---

**End of Roadmap**
