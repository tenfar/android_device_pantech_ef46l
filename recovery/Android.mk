ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),ef46l)

LOCAL_PATH := $(call my-dir)

ifneq (,$(findstring $(TARGET_DEVICE),ef46l))

# Edify extension functions for doing modem (radio) updates on Toro devices.

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += bootable/recovery
LOCAL_SRC_FILES := graphics.c

# should match TARGET_RECOVERY_UPDATER_LIBS set in BoardConfig.mk
LOCAL_MODULE := librecovery_ui_ef46l

include $(BUILD_STATIC_LIBRARY)

endif
endif
