# Android Auto Protocol Analysis

## Protobuf Message Structures

Based on function names extracted from `libzjL10001.so`:

### WifiProjectionService

```protobuf
message WifiProjectionService {
    // Fields extracted from pack/unpack functions
    int32 id = 1;              // Service ID
    // Additional fields need deeper disassembly
}
```

**Functions**:
```c
void zj__aa__wifi_projection_service__init(WifiProjectionService *message);
size_t zj__aa__wifi_projection_service__get_packed_size(const WifiProjectionService *message);
size_t zj__aa__wifi_projection_service__pack(const WifiProjectionService *message, uint8_t *out);
size_t zj__aa__wifi_projection_service__pack_to_buffer(const WifiProjectionService *message, ProtobufCBuffer *buffer);
WifiProjectionService* zj__aa__wifi_projection_service__unpack(ProtobufCAllocator *allocator, size_t len, const uint8_t *data);
void zj__aa__wifi_projection_service__free_unpacked(WifiProjectionService *message, ProtobufCAllocator *allocator);
```

### KeyBindingRequest

```protobuf
message KeyBindingRequest {
    // Authentication request from phone
}
```

**Functions**:
```c
void zj__aa__key_binding_request__init(KeyBindingRequest *message);
size_t zj__aa__key_binding_request__get_packed_size(const KeyBindingRequest *message);
size_t zj__aa__key_binding_request__pack(const KeyBindingRequest *message, uint8_t *out);
```

### KeyBindingResponse

```protobuf
message KeyBindingResponse {
    // Authentication response from head unit
}
```

**Functions**:
```c
void zj__aa__key_binding_response__init(KeyBindingResponse *message);
size_t zj__aa__key_binding_response__get_packed_size(const KeyBindingResponse *message);
size_t zj__aa__key_binding_response__pack(const KeyBindingResponse *message, uint8_t *out);
KeyBindingResponse* zj__aa__key_binding_response__unpack(ProtobufCAllocator *allocator, size_t len, const uint8_t *data);
```

### InputReport

```protobuf
message InputReport {
    enum InputType {
        KEY = 0;
        TOUCH = 1;
        RELATIVE = 2;
    }
    
    InputType type = 1;
    // Key/touch/relative data
}
```

**Functions**:
```c
void zj__aa__input_report__init(InputReport *message);
size_t zj__aa__input_report__get_packed_size(const InputReport *message);
size_t zj__aa__input_report__pack(const InputReport *message, uint8_t *out);
InputReport* zj__aa__input_report__unpack(ProtobufCAllocator *allocator, size_t len, const uint8_t *data);
void zj__aa__input_report__free_unpacked(InputReport *message, ProtobufCAllocator *allocator);

void Send_InputReport_key(/* params */);
void Send_InputReport_touch(/* params */);
void Send_InputReport_Relative(/* params */);
void input_InputReport_handle(/* params */);
```

## Connection Sequence

### Wired (USB) Android Auto

1. **USB Detection**
   ```c
   usb_device_check()  // Verify phone connected
   AndroidAutoStart()  // Initialize session
   aap_device_open()   // Open AAP device
   ```

2. **Socket Creation**
   ```c
   // Create separate sockets for each channel
   socket(AF_INET, SOCK_STREAM, 0)  // Control
   socket(AF_INET, SOCK_STREAM, 0)  // Video
   socket(AF_INET, SOCK_STREAM, 0)  // Audio
   socket(AF_INET, SOCK_STREAM, 0)  // Bluetooth
   ```

3. **Data Transfer**
   ```c
   AA_transfer_start()
   // Video: H.264 over video_socket
   // Audio: PCM over audio_socket
   // Control: Protobuf messages over control_socket
   ```

4. **Shutdown**
   ```c
   wire_aa_stop()
   shutdown_control_socket()
   shutdown_video_socket()
   shutdown_audio_socket()
   shutdown_bt_socket()
   shutdown_all_socket()
   ```

### Wireless Android Auto

1. **Bluetooth Pairing**
   ```c
   // Initial discovery via Bluetooth
   // Device name: "CarBT"
   bt_serial_socket_info()
   apk_bt_request_info()
   ```

2. **WiFi Connection**
   ```c
   request_HU_AP_share()     // Head unit creates hotspot
   request_AP_info()         // Get SSID/password
   // Phone connects to head unit WiFi
   ```

3. **mDNS Advertisement**
   ```c
   tools_start_mdnsd()       // Start Bonjour/mDNS
   // Advertise Android Auto service
   ```

4. **Session Start**
   ```c
   AA_transfer_start()
   // Same socket structure as wired
   // But over WiFi instead of USB
   ```

## Input Handling

### Touch Events

```c
void Send_InputReport_touch(int x, int y, int action) {
    InputReport report;
    zj__aa__input_report__init(&report);
    
    report.type = TOUCH;
    report.x = x;
    report.y = y;
    report.action = action;  // DOWN, MOVE, UP
    
    // Pack and send
    size_t len = zj__aa__input_report__get_packed_size(&report);
    uint8_t *buffer = malloc(len);
    zj__aa__input_report__pack(&report, buffer);
    
    send(control_socket, buffer, len, 0);
    free(buffer);
}
```

### Key Events

```c
void Send_InputReport_key(int keycode, int action) {
    InputReport report;
    zj__aa__input_report__init(&report);
    
    report.type = KEY;
    report.keycode = keycode;
    report.action = action;  // PRESS, RELEASE
    
    // Pack and send
    // ...
}
```

## USB AOA (Android Open Accessory) Mode

**USB Configuration**:
```bash
/sys/class/android_usb/android0/functions = "accessory,adb"
/sys/class/android_usb/android0/enable = "1"
```

**libusb Functions**:
```c
libusb_open_device_with_vid_pid()  // Open Android device
libusb_set_auto_detach_kernel_driver()  // Detach kernel driver
// Transfer data via USB bulk endpoints
```

**Vendor/Product IDs**: Varies by phone manufacturer

## Platform Detection

```c
bool is_platform_match() {
    // Check if phone is compatible
}

bool is_huawei_device() {
    // Detect Huawei phones (for HiCar)
}

bool is_new_version_kernel() {
    // Check kernel version compatibility
}
```

## System Integration

### Start ZLink Service (Android)

```bash
export PATH=$PATH:/system/bin/
am start-foreground-service -a "zjinnova.android.intent.action.ZLINK_SERVICE" &
```

Or:

```bash
am broadcast -a "zjinnova.android.intent.action.START_DAEMON_SERVICE" \
    --include-stopped-packages "com.zjinnova.zlink" &
```

### Stop ZLink

```bash
WIRE_ANDROID_MIRROR control_stop_zlink stop
zlink WIRE_AUTO control_stop_zlink stop
```

## Network Ports

Based on earlier findings:
- **Port 3152** (0x0C50) - Main communication
- **Port 57677** (0xE14D) - Secondary channel

Additional ports likely used for:
- Video stream
- Audio stream
- Control channel
- Bluetooth channel

## Mode Switching

```c
typedef enum {
    WIRE_AUTO,                    // Wired Android Auto
    WIRELESS_AUTO,                // Wireless Android Auto
    WIRE_ANDROID_MIRROR,          // Wired screen mirror
    WIRELESS_ANDROID_MIRROR,      // Wireless screen mirror
    HICAR,                        // Huawei HiCar
    CARPLAY_WIRE,                 // Wired CarPlay
    CARPLAY_WIRELESS              // Wireless CarPlay
} ConnectionMode;
```

## To Implement on Ubuntu

1. **USB AOA handler**
   - Use libusb
   - Detect Android phones
   - Switch to accessory mode

2. **Protobuf message handlers**
   - Implement pack/unpack functions
   - Handle WifiProjectionService, KeyBinding, InputReport

3. **Socket server**
   - Listen on appropriate ports
   - Handle control/video/audio channels

4. **Video decoder**
   - H.264 decode (ffmpeg/gstreamer)
   - Render to window (X11/Wayland)

5. **Audio router**
   - PCM playback (ALSA/PulseAudio)
   - Microphone capture

6. **Input injector**
   - X11 events → InputReport messages
   - Send to phone via control socket

---

**Note**: Full protobuf message definitions require deeper disassembly with Ghidra/IDA Pro.
