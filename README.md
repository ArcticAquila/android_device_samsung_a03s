# Samsung Galaxy A03s

![productimage](a03s.jpeg)

## Overview
The Samsung Galaxy A03s is a low range phone from Samsung released in August 2021

## Navigation
- [Overview](#overview)
- [Specifications](#specifications)
- [Resources](#resources)
- [Building](#building)
- [Product](#product)

## Specifications
Device | Samsung Galaxy A03s
:-------------: |:-------------:
SoC | Mediatek MT6765 Helio P35 (12nm)
CPU | Octa-core (4x2.35 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)
GPU | PowerVR GE8320
Memory | 3GB, 4GB
Shipped Android version | Android 11
Storage | 32GB, 64GB
MicroSD | microSDXC (dedicated slot)
Battery | Li-Po 5000 mAh, non-removable
Dimensions | 164.2 x 75.9 x 9.1 mm (6.46 x 2.99 x 0.36 in)
Display | 720 x 1600 pixels, 20:9 ratio (~270 ppi density)
Rear camera 1 | 13 MP, f/2.2, (wide), AF
Rear camera 2 | 2 MP, f/2.4, (macro)
Rear camera 3 | 2 MP, f/2.4, (depth)
Front camera | 5 MP, f/2.2

## Resources
- [Vendor Files](https://github.com/ArcticAquila/android_vendor_samsung_a03s)
- [Kernel Files](https://github.com/ArcticAquila/android_kernel_samsung_a03s)

## Building
1. Clone the device tree
```
git clone https://github.com/ArcticAquila/android_device_samsung_a03s.git device/samsung/a03s
```
2. Initialize the build environment
```
source build/envsetup.sh
```
3. Choose the device
```
lunch aosp_a03s-$(VARIANT)
```
### Tips and tricks
When building lineage run this command
```bash tools/change-version.sh lineage```

## Product
### Custom Recovery
- [TeamWin](https://github.com/ArcticAquila/Action-TWRP-Builder/releases)
- [OrangeFox](https://github.com/ArcticAquila/Action-OFRP-Builder/releases)

### Custom ROM
COMING SOON!
- [Pixel Experience Plus](http://vtuber.group)
