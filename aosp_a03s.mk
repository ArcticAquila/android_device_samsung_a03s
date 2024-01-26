DEVICE_PATH := device/samsung/a03s

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# pKVM
$(call inherit-product-if-exists, packages/modules/Virtualization/apex/product_packages.mk)

# Inherit some common AOSP stuff.
$(call inherit-product-if-exists, vendor/aosp/config/common_full_phone.mk)

# Inherit from a03s device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit some vendor files (Optional)
$(call inherit-product-if-exists, vendor/samsung/a03s/a03s-samsung.mk)

# Inherit keyfiles (Personal) (Optional)
ifneq ($(wildcard vendor/extra/product.mk),)
include vendor/extra/product.mk
endif

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 1080

# Product information
PRODUCT_NAME := aosp_a03s
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a03s
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-A037F

TARGET_GAPPS_ARCH := arm64
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
	TARGET_PRODUCT="a03s"
	PRIVATE_BUILD_DESC="a03snnxx-user 13 TP1A.220624.014 A037FXXS5CWK1 release-keys"

BUILD_FINGERPRINT := samsung/a03snnxx/a03s:13/TP1A.220624.014/A037FXXS5CWK1:user/release-keys
