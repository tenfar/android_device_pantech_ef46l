ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),ef46l)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libbluedroid.so
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SRC_FILES    := libbluedroid.so
include $(BUILD_PREBUILT)

endif
