#/******************************************************************************
#*@file Android.mk
#* brief Rules to create an invisible package which declares the permissions
#* for accessing location api
#*******************************************************************************/
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),ef46l)

LOCAL_PATH := $(call my-dir)


# build the jar library, using all java files under java directory
include $(CLEAR_VARS)

#this tag means this package will be available for all eng builds
#note if the OEM decides to include this permission and group assignment in the final build, the 
#tag should be changed to 'user'
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := 

LOCAL_JAVA_LIBRARIES := 

LOCAL_PACKAGE_NAME := PermissionToAccessLocApi
LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)
endif

