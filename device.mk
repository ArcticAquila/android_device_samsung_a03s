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

# Overlays
PRODUCT_PACKAGE_OVERLAYS :=  \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

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

# Prebuilt Firmware
PRODUCT_COPY_FILES += \
    vendor/firmware/AbovCapSense.BIN:$(TARGET_COPY_OUT_VENDOR)/firmware/AbovCapSense.BIN \
    vendor/firmware/Himax_firmware_hx83102.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/Himax_firmware_hx83102.bin \
    vendor/firmware/Himax_firmware_hx83112.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/Himax_firmware_hx83112.bin \
    vendor/firmware/Himax_mpfw_hx83102.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/Himax_mpfw_hx83102.bin \
    vendor/firmware/Himax_mpfw_hx83112.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/Himax_mpfw_hx83112.bin \
    vendor/firmware/WIFI_RAM_CODE_soc1_0_1c_1.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/WIFI_RAM_CODE_soc1_0_1c_1.bin \
    vendor/firmware/fs18xx.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/fs18xx.bin \
    vendor/firmware/gc7202_hsd_fw.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gc7202_hsd_fw.bin \
    vendor/firmware/gc7202_hsd_mp.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gc7202_hsd_mp.bin \
    vendor/firmware/hlt_jadard_firmware.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/hlt_jadard_firmware.bin \
    vendor/firmware/ilitek_fw_ls_panda.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/ilitek_fw_ls_panda.bin \
    vendor/firmware/ilitek_fw_txd_boe.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/ilitek_fw_txd_boe.bin \
    vendor/firmware/mdt_jadard_firmware.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mdt_jadard_firmware.bin \
    vendor/firmware/mt6631_fm_v1_coeff.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6631_fm_v1_coeff.bin \
    vendor/firmware/mt6631_fm_v1_patch.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6631_fm_v1_patch.bin \
    vendor/firmware/soc1_0_patch_mcu_1c_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc1_0_patch_mcu_1c_1_hdr.bin \
    vendor/firmware/soc1_0_ram_bt_1c_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc1_0_ram_bt_1c_1_hdr.bin \
    vendor/firmware/soc1_0_ram_mcu_1c_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc1_0_ram_mcu_1c_1_hdr.bin \
    vendor/firmware/soc1_0_ram_wifi_1c_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc1_0_ram_wifi_1c_1_hdr.bin \
    vendor/firmware/txd_hkc_firmware_nl9911c.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/txd_hkc_firmware_nl9911c.bin \
    vendor/firmware/txd_jadard_firmware.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/txd_jadard_firmware.bin \
    vendor/firmware/xl_truly_firmware_nl9911c.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/xl_truly_firmware_nl9911c.bin

# Init files
PRODUCT_PACKAGES += \
    fstab.mt6765 \
    fstab.ramplus \
    init.mt6765.rc \
    init.mt6765.usb.rc 

# Power
PRODUCT_PACKAGES += \
