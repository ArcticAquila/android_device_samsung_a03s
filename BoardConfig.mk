DEVICE_PATH := device/samsung/a03s

# Platform
TARGET_BOARD_PLATFORM := mt6765
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
BOARD_HAS_MTK_HARDWARE := true

# Bootloader
BOARD_VENDOR := samsung
TARGET_BOOTLOADER_BOARD_NAME := a03s
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# boot.img - prebuilt
TARGET_NO_KERNEL := false

ifeq ($(TARGET_NO_KERNEL), true)
    $(warning ========================)
    $(warning TARGET_NO_KERNEL is set to true)
    $(warning Using prebuilt boot image...)
    $(warning ========================)
    BOARD_PREBUILT_BOOTIMAGE := $(DEVICE_PATH)/prebuilt/boot.img
endif

ifeq ($(wildcard kernel/samsung/a03s/Makefile),)
    $(warning ========================)
    $(warning KERNEL SOURCE NOT FOUND)
    $(warning Using prebuilt kernel...)
    $(warning ========================)
    TARGET_FORCE_PREBUILT_KERNEL := true
    TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
    TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
    BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
endif

# Kernel
BOARD_KERNEL_CMDLINE := \
    bootopt=64S3,32N2,64N2 \
    loop.max_part=7 \
    androidboot.init_fatal_reboot_target=recovery \
    androidboot.selinux=permissive

#BOARD_KERNEL_BASE := 0x40078000
#BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_RAMDISK_OFFSET := 0x11a88000
BOARD_KERNEL_TAGS_OFFSET := 0x07808000
#BOARD_KERNEL_OFFSET := 0x00008000
#BOARD_DTB_OFFSET := 0x07808000
#BOARD_SECOND_OFFSET := 0xbff88000

BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_VENDOR_KERNEL_MODULES := $(wildcard $(DEVICE_PATH)/prebuilt/vendor-modules/*.ko)
#TARGET_KERNEL_CONFIG := a03s_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a03s
TARGET_KERNEL_CONFIG := arcticaquila_defconfig
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_KERNEL_CLANG_VERSION := r383902


BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

#BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE)
#BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
#BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_SECOND_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
#BOARD_MKBOOTIMG_ARGS += --recovery_dtbo $(BOARD_PREBUILT_DTBOIMAGE)

# Partition
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# Recovery 
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6765
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := 1
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := 1
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 3

# product.img
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 2432057344

# system.img
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3229261824

# userdata.img
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# vendor.img
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 384995328

# odm.img
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_PARTITION_SIZE := 4349952

# cache.img
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200

# boot.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072

# recovery.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 38797312 

# dtbo.img
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# Display
TARGET_SCREEN_DENSITY := 300

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 6106906624
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    product \
    odm \
    vendor

#BOARD_SUPER_PARTITION_SIZE - 4MB
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6102712320

# OTA assert
TARGET_OTA_ASSERT_DEVICE := a03s
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM := system
TARGET_COPY_OUT_ODM := odm

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true



# Vendor
ifeq ($(wildcard vendor/samsung/a03s/a03s-vendor.mk),)
    # NEED A FILE FOR BUILDING ROM FOR NOW
    # BUILD_WITHOUT_VENDOR := true
    $(error ========================)
    $(error Vendor tree not exist)
    $(error )
    $(error Building without vendor tree is not posibble for now!)
    $(error Please check vendor/samsung/a03s/a03s-vendor.mk)
    $(error ========================)
    $(error done)
    exit
endif

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/hidl/manifest.xml
DEVICE_MATRIX_FILE += $(DEVICE_PATH)/configs/hidl/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(DEVICE_PATH)/configs/hidl/framework_compatibility_matrix.xml \
    vendor/lineage/config/device_framework_matrix.xml

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# VNDK
BOARD_VNDK_VERSION := current

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 180
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_USE_TOOLBOX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
## DISABLE FOR NOW (SEEMS BROKEN!)
# TW_INCLUDE_CRYPTO := true

TARGET_RECOVERY_INITRC := \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.samsung.rc

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/props/odm.prop
#TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/props/vendor.prop
#TARGET_SYSTEM_PROP += $(DEVICE_PATH)/configs/props/system.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/configs/props/product.prop

include vendor/samsung/a03s/BoardConfigVendor.mk
# Sepolicy
#include device/mediatek/sepolicy_vndr/SEPolicy.mk
