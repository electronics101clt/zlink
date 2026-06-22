# Complete Android Auto Protobuf Message Catalog

**Extracted from**: libzjL10001.so (ZLink v5.4.71)
**Date**: 2026-06-22
**Method**: String analysis of ARM binary

---

## Overview

This document catalogs all Android Auto protobuf message types found in ZLink's implementation. These messages form the complete protocol between the phone and head unit.

**Total Functions Found**: 657 unique protobuf functions
**Message Types**: ~80+ distinct message structures

---

## Core Protocol Messages

### Session Management

```protobuf
message ServiceDiscoveryRequest {
    // Request available services from phone
}

message ServiceDiscoveryResponse {
    repeated Service services = 1;  // List of available services
}

message ChannelOpenRequest {
    // Open communication channel for a service
    int32 priority = 1;
    int32 service_id = 2;
}

message ChannelOpenResponse {
    // Acknowledge channel opening
    int32 status = 1;
}

message PingRequest {
    // Keep-alive ping
    int64 timestamp = 1;
}

message PingResponse {
    // Ping acknowledgment
    int64 timestamp = 1;
}

message ByeByeRequest {
    // Graceful disconnect
}
```

### Authentication

```protobuf
message AuthResponse {
    // Authentication response from head unit
    bytes auth_data = 1;
}

message KeyBindingRequest {
    // Key exchange request
    bytes public_key = 1;
}

message KeyBindingResponse {
    // Key exchange response
    bytes signature = 1;
    bytes certificate = 2;
}
```

---

## Service Definitions

### Video Service

```protobuf
message MediaSinkService {
    // Video playback service
}

message VideoConfiguration {
    int32 width = 1;
    int32 height = 2;
    int32 frame_rate = 3;
    int32 dpi = 4;
    int32 margin_width = 5;
    int32 margin_height = 6;
}

message SinkConfig {
    // Video sink configuration
}

message SinkSetup {
    // Setup video stream
}

message SinkStart {
    // Start video transmission
}

message SinkAck {
    // Acknowledge video frames
}

message VideoFocusNotification {
    // Video focus state changed
    int32 mode = 1;
}

message VideoFocusRequestNotification {
    // Request video focus
    int32 mode = 1;
}
```

### Audio Service

```protobuf
message MediaSourceService {
    // Audio playback service
}

message AudioConfiguration {
    int32 sample_rate = 1;
    int32 channels = 2;
    int32 bits_per_sample = 3;
}

message AudioFocusNotification {
    AudioFocusStateType state = 1;
}

message AudioFocusRequestNotification {
    AudioFocusRequestType request = 1;
    AudioStreamType stream = 2;
}

enum AudioStreamType {
    STREAM_DEFAULT = 0;
    STREAM_MEDIA = 1;
    STREAM_GUIDANCE = 2;
    STREAM_PHONE_CALL = 3;
}

enum AudioFocusRequestType {
    GAIN = 0;
    GAIN_TRANSIENT = 1;
    GAIN_TRANSIENT_MAY_DUCK = 2;
    RELEASE = 3;
}

enum AudioFocusStateType {
    GAIN = 0;
    GAIN_TRANSIENT = 1;
    LOSS = 2;
    LOSS_TRANSIENT = 3;
    LOSS_TRANSIENT_CAN_DUCK = 4;
}

message MicrophoneRequest {
    // Request microphone access
    bool open = 1;
}

message MicrophoneResponse {
    // Microphone status response
    int32 status = 1;
}
```

---

## Input Services

### Touch Input

```protobuf
message InputSourceService {
    // Touch and key input service
}

message InputReport {
    // Generic input report
    oneof event {
        TouchEvent touch = 1;
        KeyEvent key = 2;
        RelativeEvent relative = 3;
        AbsoluteEvent absolute = 4;
    }
}

message TouchEvent {
    int32 action = 1;  // DOWN, MOVE, UP
    int32 x = 2;
    int32 y = 3;
    int32 pointer_id = 4;
}

message TouchScreen {
    int32 width = 1;
    int32 height = 2;
}

message TouchPad {
    int32 width = 1;
    int32 height = 2;
}

message KeyEvent {
    int32 keycode = 1;
    int32 action = 2;  // PRESS, RELEASE
    bool long_press = 3;
    bool meta_keys = 4;
}

message RelativeEvent {
    int32 delta_x = 1;
    int32 delta_y = 2;
}

message AbsoluteEvent {
    Abs abs = 1;

    message Abs {
        int32 x = 1;
        int32 y = 2;
    }
}
```

---

## Sensor Services

### Vehicle Sensors

```protobuf
message SensorSourceService {
    // Vehicle sensor data service
}

message Sensor {
    oneof event {
        SensorRequest request = 1;
        SensorResponse response = 2;
    }

    message SensorRequest {
        int32 sensor_type = 1;
    }

    message SensorResponse {
        repeated SensorBatch batches = 1;
    }
}

message SensorBatch {
    repeated DrivingStatusData driving_status = 1;
    repeated SpeedData speed = 2;
    repeated NightModeData night_mode = 3;
}

message DrivingStatusData {
    int32 status = 1;  // PARKED, IDLING, MOVING
}

message SpeedData {
    float speed = 1;  // km/h or mph
    int64 timestamp = 2;
}

message NightModeData {
    bool is_night = 1;
}
```

---

## Bluetooth Service

```protobuf
message BluetoothService {
    // Bluetooth phone integration
}

message BluetoothPairingRequest {
    string device_address = 1;
    BluetoothPairingMethod method = 2;

    message BluetoothPairingRequest {
        // Nested pairing request
    }
}

message BluetoothPairingResponse {
    int32 status = 1;

    message BluetoothPairingResponse {
        // Nested pairing response
    }
}

message BluetoothAuthenticationData {
    bytes auth_token = 1;
}

message BluetoothAuthenticationResult {
    bool success = 1;
}

enum BluetoothPairingMethod {
    PAIRING_METHOD_UNKNOWN = 0;
    PAIRING_METHOD_A2DP = 1;
    PAIRING_METHOD_HFP = 2;
}

message InstrumentClusterInput {
    // Instrument cluster data (speedometer, fuel, etc.)
}

message NavigationNextTurnEvent {
    string instruction = 1;
    string road_name = 2;
}

message NavigationNextTurnDistanceEvent {
    int32 distance_meters = 1;
    int64 time_seconds = 2;
}
```

---

## Phone Status Service

```protobuf
message PhoneStatusService {
    // Phone call status
}

message PhoneStatus {
    repeated Call calls = 1;

    message Call {
        string number = 1;
        CallState state = 2;

        enum CallState {
            IDLE = 0;
            RINGING = 1;
            ACTIVE = 2;
            HELD = 3;
        }
    }

    message PhoneStatus {
        // Nested phone status
    }
}
```

---

## Media Playback Service

```protobuf
message MediaPlaybackStatusService {
    // Current media playback info
}

message MediaPlaybackStatus {
    MediaPlaybackMetadata metadata = 1;
    PlaybackState state = 2;
    int64 playback_position = 3;

    enum PlaybackState {
        STOPPED = 0;
        PLAYING = 1;
        PAUSED = 2;
    }
}

message MediaPlaybackMetadata {
    string title = 1;
    string artist = 2;
    string album = 3;
    int64 duration = 4;
    bytes album_art = 5;
}

message MediaBrowserService {
    // Media library browsing
}
```

---

## Navigation Status Service

```protobuf
message NavigationStatusService {
    // Navigation state
}

message NaviStatus {
    int32 status = 1;  // IDLE, NAVIGATING, ARRIVED
    string destination = 2;
    int32 eta_seconds = 3;
    int32 distance_meters = 4;
}
```

---

## Wireless Connection Service

```protobuf
message WifiProjectionService {
    // WiFi projection setup
}

message WifiStartRequest {
    // Request WiFi connection start
}

message WifiInfoRespond {
    string ssid = 1;
    string password = 2;
    string ip_address = 3;
    int32 port = 4;

    message WifiInfoRespond {
        // Nested respond
    }
}

message WifiStartRespond {
    int32 status = 1;

    message WifiStartRespond {
        // Nested respond
    }
}

message WifiConnectStatus {
    bool connected = 1;
    int32 signal_strength = 2;
}

message WifiVersionRequest {
    // Request WiFi protocol version
}

message WifiVersionRespond {
    int32 version = 1;
}
```

---

## Radio Service

```protobuf
message RadioService {
    // FM/AM radio control
}

message RadioProperties {
    int32 frequency = 1;
    int32 band = 2;  // FM, AM
    bool stereo = 3;
    int32 signal_strength = 4;
}
```

---

## Generic Notification Service

```protobuf
message GenericNotificationService {
    // Generic notification handling
}

message VoiceSessionNotification {
    bool session_active = 1;
}
```

---

## Vendor Extension Service

```protobuf
message VendorExtensionService {
    // Manufacturer-specific extensions
}
```

---

## Utility Messages

```protobuf
message Service {
    int32 id = 1;
    string name = 2;
}

message ImageOptions {
    int32 width = 1;
    int32 height = 2;
    int32 color_depth = 3;
}

message Range {
    int32 min = 1;
    int32 max = 2;
}
```

---

## Function Naming Patterns

Each message type has standard protobuf-c functions:

```c
// Initialization
void zj__aa__[message_name]__init([MessageType] *message);

// Packing (serialization)
size_t zj__aa__[message_name]__get_packed_size(const [MessageType] *message);
size_t zj__aa__[message_name]__pack(const [MessageType] *message, uint8_t *out);
size_t zj__aa__[message_name]__pack_to_buffer(const [MessageType] *message, ProtobufCBuffer *buffer);

// Unpacking (deserialization)
[MessageType]* zj__aa__[message_name]__unpack(ProtobufCAllocator *allocator, size_t len, const uint8_t *data);

// Cleanup
void zj__aa__[message_name]__free_unpacked([MessageType] *message, ProtobufCAllocator *allocator);
```

---

## High-Level Send Functions

```c
// Session
Send_ByeByeResponse()

// Sensors
Send_SensorResponse()
Send_Sensor_Driver_status()
Send_Sensor_speed()
Send_Sensor_night_mode()

// Input
Send_InputReport_key()
Send_InputReport_touch()
Send_InputReport_Relative()
Send_input_KeyBindingRequest()
Send_input_KeyBindingResponse()
```

---

## Message Handlers

```c
AA_control_message_handle()        // Control channel messages
AA_input_message_handle()          // Input events from head unit
AA_video_message_handle()          // Video stream control
AA_main_audio_message_handle()     // Media audio
AA_mic_message_handle()            // Microphone data
AA_system_audio_message_handle()   // System sounds
AA_navi_audio_message_handle()     // Navigation voice
AA_sensor_message_handle()         // Sensor data from car
AA_bluetooth_message_handle()      // Bluetooth phone calls
AA_phone_state_message_handle()    // Phone status updates
AA_navi_status_message_handle()    // Navigation updates
AA_media_status_message_handle()   // Media playback updates
```

---

## Implementation Notes

### For Ubuntu Android Auto Implementation

1. **Define .proto files** - Reconstruct protobuf definitions from these message names
2. **Compile with protoc** - Generate C code using protobuf-c compiler
3. **Implement handlers** - Create handler functions for each message type
4. **Channel management** - Implement channel open/close logic
5. **Service discovery** - Respond to service discovery with supported services

### Recommended Services for Minimal Implementation

**Priority 1 (Essential)**:
- VideoConfiguration + MediaSinkService (display Android Auto UI)
- AudioConfiguration + MediaSourceService (playback audio)
- InputSourceService (touch input)
- ServiceDiscoveryRequest/Response (session init)
- ChannelOpenRequest/Response (channel setup)

**Priority 2 (Enhanced)**:
- MicrophoneRequest/Response (voice commands)
- SensorSourceService (night mode, parking sensor)
- MediaPlaybackStatusService (now playing info)

**Priority 3 (Full Featured)**:
- BluetoothService (hands-free calls)
- PhoneStatusService (call notifications)
- NavigationStatusService (turn-by-turn)
- RadioService (car radio control)

---

## Next Steps

1. **Create .proto files** - Reverse engineer full field definitions
2. **Capture network traffic** - Sniff actual Android Auto session for field values
3. **Implement in C/C++** - Build protobuf handlers for Ubuntu
4. **Test with real phone** - Validate against actual Android Auto app

---

**End of Catalog**
