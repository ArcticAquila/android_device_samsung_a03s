LOCAL_PATH := $(call my-dir)

# Init file
include $(CLEAN_VARS)
LOCAL_MODULE       := factory_init.connectivity.common.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/factory_init.connectivity.common.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := factory_init.connectivity.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/factory_init.connectivity.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := factory_init.project.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/factory_init.project.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE	   := factory_init.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/factory_init.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init_connectivity.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init_connectivity.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.aee.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.aee.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.ago.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.ago.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.cgroup.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.cgroup.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.connectivity.common.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.connectivity.common.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.connectivity.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.connectivity.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.modem.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.modem.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.mt6765.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.mt6765.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.mt6765.usb.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.mt6765.usb.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.project.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.project.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := init.sensor_1_0.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.sensor_1_0.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := meta_init.connectivity.common.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/meta_init.connectivity.common.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := meta_init.connectivity.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/meta_init.connectivity.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE	   := meta_init.modem.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/meta_init.modem.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE	   := meta_init.project.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/meta_init.project.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE	   := meta_init.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/meta_init.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := meta_init.vendor.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/meta_init.vendor.rc
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE       := multi_init.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/multi_init.rc
include $(BUILD_PREBUILT)

# FSTAB file
include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.mt6765
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/fstab.mt6765
include $(BUILD_PREBUILT)

include $(CLEAN_VARS)
LOCAL_MODULE	   := fstab.ramplus
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/fstab.ramplus
include $(BUILD_PREBUILT)

## TEMPORARY
# PLEASE REMOVE AFTER SELINUX WITH ENFORCING IS WORKING!
include $(CLEAN_VARS)
LOCAL_MODULE       := init.selinux.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_SRC_FILES    := etc/init.selinux.rc
include $(BUILD_PREBUILT)
