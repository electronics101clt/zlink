# ZLink Android Auto/CarPlay Implementation - Complete Extraction

**Extracted from**: AC8227L-based Android head unit (M7YHEIB69SSSSSA6)
**Date**: 2026-06-21 to 2026-06-22
**ZLink Version**: 5.4.71
**Device**: Xyauto AC8227L (Autochips platform)

---

## 🎯 **NEW: Complete Reverse Engineering Analysis Available**

**[📖 Click here for complete protocol analysis and implementation guide](analysis/INDEX.md)**

We have fully reverse-engineered the Android Auto protocol with:
- ✅ **657 protobuf functions** extracted and documented
- ✅ **~80 message types** with field structures
- ✅ **Complete connection sequences** (wired & wireless)
- ✅ **14-week implementation roadmap** for Ubuntu/Linux
- ✅ **2,993 lines** of comprehensive technical documentation

**Quick Links**:
- [Complete Protobuf Message Catalog](analysis/libraries/reports/PROTOBUF_MESSAGES_COMPLETE.md) - All message types
- [Android Auto Protocol Details](analysis/libraries/reports/ANDROID_AUTO_PROTOCOL.md) - Connection flow
- [Implementation Roadmap](analysis/libraries/reports/IMPLEMENTATION_ROADMAP.md) - How to build it
- [Reverse Engineering Findings](analysis/libraries/reports/REVERSE_ENGINEERING_FINDINGS.md) - Main findings

**Conclusion**: Android Auto is **fully documented and feasible** for Ubuntu implementation. CarPlay requires Apple licensing and is **not recommended**.

---

## Directory Structure

```
zlink/
├── apk/                  # Main application package
├── lib/                  # Native libraries
├── system/               # System dependencies
├── config/               # Configuration and dumps
└── README.md            # This file
```

---

## Extracted Files

### Application Package (apk/)

**zlink_wireless.apk** (26 MB)
- Package: com.zjinnova.zlink
- Version: 5.4.71 (50471)
- Min SDK: 21 (Android 5.0)
- Target SDK: 21
- Installed location: /vendor/operator/app/zlink_wireless/

**Features**:
- Wireless Android Auto
- Wireless Apple CarPlay
- Wired Android Auto
- Wired CarPlay
- Screen mirroring
- Huawei HiCar support

---

### Native Libraries (lib/)

**ZLink Core Libraries**:
1. **libzlink.so** (102 KB)
   - Core ZLink functionality
   
2. **libzlink_core.so** (122 KB)
   - Core protocol implementation
   
3. **libshell-super.com.zjinnova.zlink.so** (252 KB)
   - Shell/system integration layer

**Vendor Bluetooth Libraries**:
4. **android.hardware.bluetooth@1.0-impl-mediatek.so** (51 KB)
   - MediaTek Bluetooth HAL implementation
   
5. **libbluetooth_mtk.so** (30 KB)
   - MediaTek Bluetooth core library

**Vendor WiFi Libraries**:
6. **libwifi-hal.so** (89 KB)
   - WiFi hardware abstraction layer
   
7. **vendor.mediatek.hardware.wifi.hostapd@1.0_vendor.so** (188 KB)
   - WiFi hotspot/access point daemon interface

---

### System Dependencies (system/)

**Applications**:
- **CanBus.apk** (47 MB)
  - Package: com.xygala.canbus
  - Car protocol communication (CAN bus interface)
  - Required for steering wheel controls, reverse camera, vehicle data

**Binaries**:
- **autobt** (25 KB)
  - Automatic Bluetooth management daemon
  
- **android.hardware.bluetooth@1.0-service-mediatek** (16 KB)
  - Bluetooth hardware service
  
- **hostapd** (489 KB)
  - WiFi access point daemon (for wireless CarPlay/Auto)
  
- **hostapd_cli** (55 KB)
  - WiFi access point control interface

---

### Configuration Files (config/)

**USB & Audio**:
- **usb_audio_policy_configuration.xml**
  - USB audio routing for Android Auto/CarPlay
  - Defines audio formats: PCM 16-bit, 44.1kHz stereo

**Bluetooth**:
- **bluetooth/** (directory)
  - Bluetooth stack configuration files
  
- **bluetooth_info.txt**
  - Current Bluetooth state dump
  - Bonded device: moto g power 5G (F8:EF:5D:00:16:F7)
  - Bluetooth name: "CarBT"

**WiFi**:
- **wifi-apns.xml**
  - WiFi access point configuration
  
- **wifi_info.txt**
  - Current WiFi state (AP mode enabled)

**System Info**:
- **platform.xml**
  - Platform permissions and GID mappings
  
- **system_properties.txt** (581 properties)
  - Complete system property dump
  - Key properties:
    - `persist.sys.xy.proinfo.carplay = 0` (native CarPlay disabled)
    - `service.carlife.enable = 1` (Baidu CarLife enabled)
    - `ro.product.xy.manufacturer = xyauto_gongban`

**Package Details**:
- **zlink_package_info.txt** (256 lines)
  - Complete package dump with permissions, activities, services
  - All intent filters and capabilities

**USB Info**:
- **usb_info.txt**
  - USB manager state
  - Connected devices
  - AOA (Android Open Accessory) mode capabilities

---

## How ZLink Works

### Architecture

```
┌─────────────────────────────────────────┐
│  Phone (iOS/Android)                     │
│  - Android Auto App                      │
│  - Apple CarPlay                         │
└──────────────┬──────────────────────────┘
               │
         USB or WiFi/BT
               │
┌──────────────▼──────────────────────────┐
│  ZLink App (com.zjinnova.zlink)         │
│  - Protocol translation                  │
│  - Video decoding (H.264)               │
│  - Audio routing                        │
│  - Touch input handling                 │
└──────────────┬──────────────────────────┘
               │
        Native Libraries
               │
┌──────────────▼──────────────────────────┐
│  Android System Services                 │
│  - Bluetooth (CarBT)                    │
│  - WiFi Hotspot                         │
│  - USB Accessory Mode                   │
│  - Media Projection                     │
└──────────────┬──────────────────────────┘
               │
┌──────────────▼──────────────────────────┐
│  Hardware (AC8227L)                     │
│  - Display: 1024x600                    │
│  - Touchscreen                          │
│  - Audio codec                          │
│  - Bluetooth/WiFi radio                 │
└─────────────────────────────────────────┘
```

### Connection Methods

**1. Wired (USB)**
- Phone connects via USB cable
- Uses AOA (Android Open Accessory) protocol for Android
- Uses iAP2 (iPod Accessory Protocol 2) for iPhone
- Video: H.264 stream over USB
- Audio: PCM 16-bit 44.1kHz over USB accessory audio class
- Touch: USB HID (Human Interface Device)

**2. Wireless (Bluetooth + WiFi)**
- Initial pairing via Bluetooth (CarBT)
- WiFi Direct or hotspot for data
- Bluetooth name: "CarBT"
- ZLink creates WiFi AP or connects to phone's hotspot
- Video/audio streamed over WiFi
- Control commands over Bluetooth

### ZLink Activities

All launchable modes:
1. `MainActivity` - Main selection screen (X-Car interface)
2. `CarPlayActivity` - Apple CarPlay launcher
3. `AutoActivity` - Android Auto launcher
4. `CarPlayAutoActivity` - Combined Auto/CarPlay mode
5. `MirrorActivity` - Screen mirroring
6. `HiCarActivity` - Huawei HiCar
7. `DlnaActivity` - DLNA media sharing

### Permissions

ZLink requires extensive permissions:
- `BLUETOOTH`, `BLUETOOTH_ADMIN`, `BLUETOOTH_CONNECT`, `BLUETOOTH_SCAN`
- `ACCESS_WIFI_STATE`, `CHANGE_WIFI_STATE`, `OVERRIDE_WIFI_CONFIG`
- `INTERNET`, `ACCESS_NETWORK_STATE`, `CHANGE_NETWORK_STATE`
- `RECORD_AUDIO`, `MODIFY_AUDIO_SETTINGS`
- `SYSTEM_ALERT_WINDOW` (overlay)
- `READ_PHONE_STATE`, `CALL_PHONE`
- `ACCESS_FINE_LOCATION`, `ACCESS_COARSE_LOCATION`
- `WRITE_EXTERNAL_STORAGE`, `READ_EXTERNAL_STORAGE`

---

## Dependencies & Integration

### Required System Services
- **USB Manager**: AOA mode support
- **Bluetooth**: Pairing and audio routing
- **WiFi**: Hotspot/WiFi Direct for wireless mode
- **Media Projection**: Screen mirroring
- **Audio**: Low-latency audio routing

### Required Hardware
- USB OTG support (for wired mode)
- Bluetooth 4.0+ (for wireless pairing)
- WiFi 802.11n+ (for wireless data)
- H.264 hardware decoding (for video)

### Related Packages
- **Google Play Services** (`com.google.android.gms`)
  - Contains `com.google.android.gms.car.FirstActivity`
  - Native Android Auto support (not used by ZLink)
  
- **CanBus** (`com.xygala.canbus`)
  - Vehicle integration
  - Steering wheel controls
  - Reverse camera trigger
  - Vehicle data (speed, RPM, etc.)

---

## Network Ports

ZLink listens on:
- **Port 3152** (0x0C50) - Main communication
- **Port 57677** (0xE14D) - Secondary channel
- All on localhost (127.0.0.1)

---

## Screen Resolution

- **Native**: 1024x600
- **CarPlay scaling**: Handled by `CarPlayScaleHandler`
- **Android Auto**: Native resolution projection

---

## Notes

1. **No Native CarPlay**: System property shows CarPlay is disabled at system level. ZLink provides software implementation.

2. **Root Not Available**: Could not extract app data directory (`/data/data/com.zjinnova.zlink/`) - requires root access.

3. **Chinese Market Device**: Includes Baidu CarLife and Huawei HiCar support (not relevant for US market).

4. **Licensing**: ZLink is a reverse-engineered implementation - it bypasses official Apple/Google certification requirements.

---

## Hardware Platform

**SoC**: Autochips AC8227L
**Architecture**: ARM Cortex-A7 (armeabi-v7a)
**Android**: 7.1 (API level 25)
**Kernel**: MediaTek-based
**Display**: 1024x600 LVDS

---

## Next Steps for Development

1. **Decompile APK**: Use `apktool` or `jadx` to reverse engineer
2. **Analyze Native Libraries**: Use `IDA Pro` or `Ghidra` for ARM disassembly
3. **Network Analysis**: Monitor TCP/UDP traffic during connection
4. **Protocol Capture**: Sniff USB/WiFi traffic to understand data format
5. **Build Custom Client**: Implement own Android Auto/CarPlay client using learned protocols

---

## Security Considerations

ZLink has broad system access:
- Can read phone state and call logs
- Full network control (WiFi configuration)
- Audio recording capability
- Location access
- System overlay (could capture other app interactions)

Use caution when connecting personal devices.

---

**End of Documentation**
