LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),a03s)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

# ADB
PRODUCT_ADB_KEYS := $(LOCAL_PATH)/adb.pub
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
