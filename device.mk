LOCAL_PATH := device/samsung/a03s

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Properties
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Additional native libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/a2dpsink_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dpsink_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects_spatializer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_spatializer.xml \
    $(LOCAL_PATH)/configs/audio/audio_em.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_em.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration_bluetooth_legacy_hal.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_bluetooth_legacy_hal.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_sec.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/bluetooth_offload_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_offload_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/sec_audio_volume_curve.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sec_audio_volume_curve.xml \
    $(LOCAL_PATH)/configs/audio/situation_audio_policy_volumes_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/situation_audio_policy_volumes_sec.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_accessory_only_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_accessory_only_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml 

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_ape.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_qcp.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml 

# Init files
PRODUCT_PACKAGES += \
    fstab.mt6765 \
    fstab.ramplus \
    init.mt6765.rc \
    init.mt6765.usb.rc 

PRODUCT_ADB_KEYS := $(LOCAL_PATH)/keys/temporary.pub
ifeq ($(wildcard $(PRODUCT_ADB_KEYS)),)
    $(warning ========================)
    $(warning The adb key for this release)
    $(warning )
    $(warning   $(PRODUCT_ADB_KEYS))
    $(warning )
    $(warning does not exist. Most likely PLATFORM_VERSION in build/core/version_defaults.mk)
    $(warning has changed and a new adb key needs to be generated.)
    $(warning )
    $(warning Please run the following commands to create a new key:)
    $(warning )
    $(warning   make -j8 adb)
    $(warning   LOGNAME=android-eng HOSTNAME=google.com adb keygen $(patsubst %.pub,%,$(PRODUCT_ADB_KEYS)))
    $(warning )
    $(warning and upload/review/submit the changes)
    $(warning ========================)
    $(error done)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6765:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6765 \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6765:$(TARGET_COPY_OUT_RECOVERY)/root/first_stage_ramdisk/fstab.mt6765

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/google/interfaces \
    hardware/google/pixel \
    hardware/mediatek

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# Fastboot
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.1-impl-mock

# Audio 
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0.vendor \
    android.hardware.audio@4.0.vendor \
    android.hardware.audio@4.0-util.vendor \
    android.hardware.audio@5.0.vendor \
    android.hardware.audio@5.0-util.vendor \
    android.hardware.audio@6.0.vendor \
    android.hardware.audio@6.0-util.vendor \
    android.hardware.audio@7.0.vendor \
    android.hardware.audio@7.1.vendor

# Audio common
PRODUCT_PACKAGES += \
    android.hardware.audio.common-util.vendor \
    android.hardware.audio.common@2.0.vendor \
    android.hardware.audio.common@2.0-util.vendor \
    android.hardware.audio.common@4.0.vendor \
    android.hardware.audio.common@4.0-util.vendor \
    android.hardware.audio.common@5.0.vendor \
    android.hardware.audio.common@5.0-util.vendor \
    android.hardware.audio.common@6.0.vendor \
    android.hardware.audio.common@6.0-util.vendor \
    android.hardware.audio.common@7.0.vendor \
    android.hardware.audio.common@7.0-util.vendor \
    android.hardware.audio.common@7.0-enums.vendor \
    android.hardware.audio.common@7.0-util.vendor \

# Audio effect
PRODUCT_PACKAGES += \
    android.hardware.audio.effect@4.0.vendor \
    android.hardware.audio.effect@4.0-util.vendor \
    android.hardware.audio.effect@5.0.vendor \
    android.hardware.audio.effect@5.0-util.vendor \
    android.hardware.audio.effect@6.0.vendor \
    android.hardware.audio.effect@6.0-util.vendor \
    android.hardware.audio.effect@7.0.vendor \
    android.hardware.audio.effect@7.0-util.vendor

# Biometrics
PRODUCT_PACKAGES += \
    android.hardware.biometrics.face@1.0.vendor

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0.vendor \
    android.hardware.bluetooth@1.1.vendor

# CAS
PRODUCT_PACKAGES += \
    android.hardware.cas@1.2-service-lazy

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4-service.clearkey

PRODUCT_PACKAGES += \
    android.hardware.drm@1.0.vendor \
    android.hardware.drm@1.1.vendor \
    android.hardware.drm@1.2.vendor \
    android.hardware.drm@1.3.vendor \
    android.hardware.drm@1.4.vendor

# Audio bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.audio@2.0.vendor \
    android.hardware.bluetooth.audio@2.1.vendor \

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor \

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss-v2-cpp.vendor \
    android.hardware.gnss@1.0.vendor \
    android.hardware.gnss@1.1.vendor \
    android.hardware.gnss@2.0.vendor \
    android.hardware.gnss@2.1.vendor \
    android.hardware.gnss.measurement_corrections@1.0.vendor \
    android.hardware.gnss.measurement_corrections@1.1.vendor \
    android.hardware.gnss.visibility_control@1.0.vendor

PRODUCT_PACKAGES += \
    android.hardware.graphics.common@1.0.vendor \
    android.hardware.graphics.common@1.1.vendor \
    android.hardware.graphics.common@1.2.vendor \
    android.hardware.graphics.mapper@2.0.vendor \
    android.hardware.graphics.mapper@2.1.vendor \
    android.hardware.graphics.mapper@3.0.vendor \
    android.hardware.graphics.mapper@4.0.vendor \
    android.hardware.graphics.allocator@1.0.vendor \
    android.hardware.graphics.allocator@2.0.vendor \
    android.hardware.graphics.allocator@3.0.vendor \
    android.hardware.graphics.allocator@4.0.vendor

# IMS
PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-ims-base

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0.vendor \
    android.hardware.keymaster@4.0.vendor \
    android.hardware.keymaster@4.0-service \
    android.hardware.keymaster@4.1.vendor 

PRODUCT_PACKAGES += \
    libkeymaster4.vendor \
    libkeymaster4support.vendor \
    libkeymaster4_1support.vendor \
    libpuresoftkeymasterdevice.vendor \
    libsoft_attestation_cert.vendor

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0.vendor:64

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.0.vendor \
    android.hardware.media.c2@1.1.vendor \
    android.hardware.media.c2@1.2.vendor \
    android.hardware.media.omx@1.0-service \

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0.vendor \
    android.hardware.power@1.1.vendor \
    android.hardware.power@1.2.vendor \
    android.hardware.power@1.3.vendor

PRODUCT_PACKAGES += \
    vendor.mediatek.hardware.mtkpower@1.0.vendor \
    vendor.mediatek.hardware.mtkpower@1.1.vendor \
    vendor.mediatek.hardware.mtkpower@1.2.vendor \
    vendor.mediatek.hardware.mtkpower@1.2-service.stub

# Sensors
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0.vendor \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.1.vendor

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio.config@1.0.vendor \
    android.hardware.radio-V1-ndk.vendor \
    android.hardware.radio@1.0.vendor \
    android.hardware.radio@1.1.vendor \
    android.hardware.radio@1.2.vendor \
    android.hardware.radio@1.3.vendor \
    android.hardware.radio@1.4.vendor 

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@2.0.vendor

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0.vendor \
    android.hardware.usb@1.1.vendor \
    android.hardware.usb@1.2.vendor \
    android.hardware.usb@1.3.vendor

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi.supplicant@1.0.vendor \
    android.hardware.wifi.supplicant@1.1.vendor \
    android.hardware.wifi.supplicant@1.2.vendor \
    android.hardware.wifi.supplicant@1.3.vendor \
    android.hardware.wifi.supplicant@1.4.vendor \
    android.hardware.wifi.hostapd@1.0.vendor \
    android.hardware.wifi.hostapd@1.1.vendor \
    android.hardware.wifi.hostapd@1.2.vendor \
    android.hardware.wifi.hostapd@1.3.vendor

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0.vendor \
    android.hardware.wifi@1.1.vendor \
    android.hardware.wifi@1.2.vendor \
    android.hardware.wifi@1.3.vendor \
    android.hardware.wifi@1.4.vendor \
    android.hardware.wifi@1.5.vendor
