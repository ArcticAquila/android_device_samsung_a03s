LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),a03s)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
