---
description: Android APK faylini build qilish
---

# Build APK

Release APK yaratish.

## Qadamlar

// turbo
1. APK build qilish:
```bash
flutter build apk --release
```

2. APK joylashuvi:
```
build/app/outputs/flutter-apk/app-release.apk
```

## Split APK (kichikroq hajm)

```bash
flutter build apk --split-per-abi
```

Bu 3 ta APK yaratadi:
- `app-armeabi-v7a-release.apk` (ARM 32-bit)
- `app-arm64-v8a-release.apk` (ARM 64-bit)
- `app-x86_64-release.apk` (x86 64-bit)
