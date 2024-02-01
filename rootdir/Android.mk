LOCAL_PATH := $(call my-dir)

# Init file
include $(CLEAR_VARS)
LOCAL_MODULE       := init.mt6765.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.mt6765.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mt6765.usb.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/init/init.mt6765.usb.rc
include $(BUILD_PREBUILT)

# FSTAB file
include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.mt6765
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/fstab.mt6765
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE	   := fstab.ramplus
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := etc/fstab.ramplus
include $(BUILD_PREBUILT)

## TEMPORARY
# PLEASE REMOVE AFTER SELINUX WITH ENFORCING IS WORKING!
include $(CLEAR_VARS)
LOCAL_MODULE       := init.selinux.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_SRC_FILES    := etc/init/init.selinux.rc
include $(BUILD_PREBUILT)
