# ZLink Android Auto & Apple CarPlay Reverse Engineering Report

**Date**: 2026-06-21
**Source**: ZLink v5.4.71 (AC8227L head unit)
**Architecture**: ARM 32-bit (armeabi-v7a)

---

## Executive Summary

ZLink implements both Android Auto and Apple CarPlay through native ARM libraries. The implementation is split across multiple shared objects with the main protocol logic in `libzjL10001.so` (Android Auto) and `libzjAirPlay.so` (CarPlay).

---

## Library Overview

### Android Auto Implementation

**Primary Library**: `libzjL10001.so` (2.9 MB)

**Key Functions Identified**:
```
AndroidAutoStart()           - Entry point for Android Auto session
AA_transfer_start()          - Begin data transfer
wire_aa_stop()              - Stop wired Android Auto
shutdown_video_socket()      - Close video stream
shutdown_audio_socket()      - Close audio stream
shutdown_control_socket()    - Close control channel
aap_device_open()           - Open AAP (Android Auto Protocol) device
usb_device_check()          - Verify USB connection
```

**Protocol Buffer Messages**:
```
zj__aa__wifi_projection_service
zj__aa__key_binding_request
zj__aa__key_binding_response
zj__aa__input_report
```

**Connection Modes**:
- `WIRE_AUTO` - Wired USB connection
- `WIRELESS_AUTO` - Wireless (WiFi + Bluetooth)
- `WIRE_ANDROID_MIRROR` - Screen mirroring via USB
- `WIRELESS_ANDROID_MIRROR` - Wireless screen mirroring

**Network Functions**:
- Socket-based communication (TCP/UDP)
- Multiple channels: control, video, audio, bluetooth
- Uses standard BSD sockets (bind, listen, connect)

---

### Apple CarPlay Implementation

**Primary Libraries**:
- `libzjAirPlay.so` (2.8 MB) - Main CarPlay protocol
- `libAirPlay.so` (267 KB) - AirPlay receiver implementation
- `libusbmuxd.so` (2.1 MB) - USB multiplexer for iOS devices

**Key Functions Identified**:
```
CarPlay_Start()                              - Entry point
zj_airplay_start()                           - Start AirPlay session
zj_airplay_stop()                            - Stop session
zj_iap_start()                               - Start iAP2 (iPod Accessory Protocol 2)
zj_iap_stop()                                - Stop iAP2
zj_mfi_init()                                - Initialize MFi (Made for iPhone) authentication
AirPlayReceiverServerPlatformInitialize()    - Initialize AirPlay receiver
AirPlayReceiverSessionCreate()               - Create session
carplay_server_stop()                        - Stop CarPlay server
```

**FairPlay DRM** (Apple's encryption):
```
fairplay_init()              - Initialize FairPlay
fairplay_setup()             - Setup encryption
fairplay_handshake()         - Perform handshake
fairplay_decrypt()           - Decrypt data stream
fairplay_destroy()           - Cleanup
```

**USB Multiplexing** (`libusbmuxd.so`):
```
[UsbMux]createSocket         - Create socket for iOS device
[UsbMux]forward              - Forward data between local and iOS device
[UsbMux]accept_local         - Accept connection from local app
[UsbMux]connect_to_device    - Connect to iPhone/iPad
```

**Build Information**:
- Compiled path: `/root/.jenkins/workspace/Zlink5GitlabCompileLibs/Zlink5Libs/carplay-protocal-3.0/`
- Protocol version: CarPlay 3.0 (R16A8 release)

---

## Display Projection (dmsdp libraries)

**Libraries**:
- `libdmsdp.so` (282 KB) - Main display projection
- `libdmsdpdvaudio.so` (70 KB) - Audio stream handling
- `libdmsdpdvcamera.so` (54 KB) - Camera feed support
- `libdmsdpdvgps.so` (18 KB) - GPS data forwarding
- `libdmsdpcrypto.so` (134 KB) - Encryption/decryption
- `libdmsdpsec.so` (46 KB) - Security layer

**Purpose**: Handle H.264 video stream decoding and screen rendering from phone to head unit display.

---

## Core ZLink Libraries

**libzlink_core.so** (122 KB) & **libzlink.so** (102 KB)

**Functions**:
- Bluetooth pairing/connection
- WiFi hotspot management
- Service coordination
- Mode switching (Auto/CarPlay/Mirror)

**Intent Actions** (Android):
```java
zjinnova.android.intent.action.ZLINK_SERVICE
zjinnova.android.intent.action.START_DAEMON_SERVICE
```

**System Integration**:
```bash
/sys/class/android_usb/android0/functions    # USB gadget configuration
/sys/class/android_usb/android0/enable       # Enable/disable USB
```

---

## Network Protocol Details

### Android Auto Communication

**Channels**:
1. **Control Socket** - Commands and configuration
2. **Video Socket** - H.264 video stream
3. **Audio Socket** - PCM audio stream
4. **BT Socket** - Bluetooth data

**Protocol**: Google Protobuf over TCP/IP

**Messages**:
- `WifiProjectionService` - WiFi projection setup
- `KeyBindingRequest/Response` - Pairing/authentication
- `InputReport` - Touch and button inputs

**Functions**:
```
Send_InputReport_key()       - Send key press
Send_InputReport_touch()     - Send touch coordinates
Send_InputReport_Relative()  - Send relative movement
```

### Apple CarPlay Communication

**Protocol**: AirPlay + iAP2 (iPod Accessory Protocol 2)

**Channels**:
1. **HTTP Server** - Control channel
2. **RTSP** - Real-time streaming
3. **USB/Network** - Data transport

**Security**:
- **FairPlay DRM** - Apple's encryption for content protection
- **MFi Authentication** - Hardware authentication chip verification

**Audio Format**:
- AAC compression
- Function: `CarPlayGetAAC_2_apk()`

---

## Bluetooth Integration

**BT Service Functions**:
```
bt_request_disconnect()      - Request disconnect
apk_bt_request_info()        - Get BT device info
apk_bt_disconnect_request()  - Request APK to disconnect
serial_bt_disconnect()       - Disconnect serial BT
bt_serial_socket_disconnect() - Close BT socket
```

**Workflow**:
1. Bluetooth pairs initially (device name: "CarBT")
2. WiFi Direct or hotspot connection established
3. Data transfers over WiFi
4. Bluetooth remains for commands/control

---

## WiFi Hotspot/WiFi Direct

**Functions**:
```
request_HU_AP_share()        - Request head unit to share AP
request_AP_info()            - Get AP SSID/password
hicar_get_wifi_info()        - Get WiFi connection info
zlink_get_ap_channel()       - Get WiFi channel
tools_start_mdnsd()          - Start mDNS daemon (Bonjour)
tools_stop_mdnsd()           - Stop mDNS
dnssd_register_airplay()     - Register AirPlay service via mDNS
```

**mDNS** (Multicast DNS):
- Used for service discovery
- Allows phone to find head unit on local network
- Required for wireless CarPlay/Auto

---

## Video Codec

**Format**: H.264
**Functions**: Hardware accelerated decoding expected
**Resolution**: Scaled to 1024x600 via `CarPlayScaleHandler`

---

## Audio Handling

**Libraries**:
- `libfdk-aac.so` (1.1 MB) - AAC decoder (Fraunhofer)
- `libwebrtc_apm.so` (1.5 MB) - Audio processing module
- `libapm.so` (1.1 MB) - Additional audio processing
- `libspeexdsp.so` (66 KB) - Speex DSP for echo cancellation

**Audio Flow**:
```
Phone → AAC encoded → Network/USB → Decode → PCM → Hardware audio output
Microphone → PCM → WebRTC APM → AAC → Phone
```

**Functions**:
```
audio_start_send()           - Start audio stream
AudioMainSend()              - Send main audio data
audio_stop_send()            - Stop audio
AudioMicStart()              - Start microphone
AudioMicStop()               - Stop microphone
```

---

## Other Supported Protocols

### Huawei HiCar (Chinese market)

**Functions**:
```
HiCarStartProjection()       - Start projection
HiCarPauseProjection()       - Pause
hicar_main_start()           - Initialize HiCar
hicar_wireless_reconnect()   - Reconnect wirelessly
```

**Not relevant for US/Ubuntu implementation.**

### Baidu CarLife (Chinese market)

**Library**: `libzjcarlife.so` (2.8 MB)

**Not relevant for US/Ubuntu implementation.**

---

## Key Insights for Ubuntu Implementation

### What We Learned

1. **Android Auto uses Google Protobuf**
   - Messages are serialized with protobuf
   - Need to implement message handlers for: WifiProjectionService, KeyBinding, InputReport

2. **Multiple network channels**
   - Separate sockets for control, video, audio
   - Can run over USB or WiFi

3. **CarPlay requires FairPlay**
   - Apple's proprietary DRM
   - Requires MFi hardware authentication chip
   - Unlikely to implement without Apple licensing

4. **USB AOA mode for Android**
   - Uses Android Open Accessory protocol
   - Standard USB bulk transfer

5. **mDNS/Bonjour for discovery**
   - Required for wireless mode
   - Advertises services on local network

### What's Feasible on Ubuntu

✅ **Android Auto** - Can implement:
- USB AOA protocol implementation
- Google Protobuf message handling
- H.264 video decoding (ffmpeg/gstreamer)
- Audio routing (ALSA/PulseAudio)
- Touch input simulation

❌ **Apple CarPlay** - Difficult:
- Requires FairPlay DRM (proprietary)
- Needs MFi authentication hardware
- Apple licensing required

### Recommended Approach

1. **Focus on Android Auto only**
2. **Use OpenAuto as base** - It already implements some of this
3. **Reference ZLink for missing pieces**:
   - Wireless mode (WiFi + BT pairing)
   - Protobuf message structures
   - USB initialization sequence
4. **Build x86_64 version** - Rewrite ARM code for Ubuntu

---

## Build Artifacts Found

**Jenkins CI/CD Build Paths**:
```
/root/.jenkins/workspace/Zlink5GitlabCompileLibs/
/root/.jenkins/workspace/Zlink5GitlabCompileLibs/Zlink5Libs/carplay-protocal-3.0/
AppleCarPlay_CommunicationPlugin_R16A8/
```

**Source Files Referenced**:
```
ScreenUtilsDLL.c
AudioUtilsDLL.c
AudioConverterStub.c
fairplay_playfair.c
```

**Internal URLs**:
```
http://url.zjinnova.com/download_zlink5_android_app
```

---

## Next Steps

1. **Disassemble key functions** - Use Ghidra for deeper analysis
2. **Capture network traffic** - Sniff packets during actual connection
3. **Extract protobuf definitions** - Reverse engineer message structures
4. **Implement minimal client** - Build proof-of-concept for Ubuntu

---

## Tools Used

- `apktool` - APK decompilation
- `strings` - Extract strings from binaries
- `readelf` - ELF binary analysis
- `radare2` - Reverse engineering framework
- `nm` / `objdump` - Symbol extraction

---

**End of Report**
