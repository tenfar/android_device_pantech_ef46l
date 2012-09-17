#/******************************************************************************
#*@file Android.mk
#* brief Rules to copy a xml file into system/etc/permissions. This file is
#* needed for permission to group mapping and also publishing a java library
#* to user app/services. This library needs to be published because then both
#* our test app and the framework layer can use the same one without modifying
#* the android framework
#*******************************************************************************/
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),ef46l)

LOCAL_PATH := $(call my-dir)

# copy the permission file to system/etc/permissions
# note this may not be necessary if OEM decides to
# integrate the java files into their framework
include $(CLEAR_VARS)

LOCAL_MODULE := com.qualcomm.location.quipslib.xml

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions

LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)
endif


