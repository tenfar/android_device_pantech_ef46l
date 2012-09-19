# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm8960
-include device/pantech/msm8960-common/BoardConfigCommon.mk
TARGET_BOOTLOADER_BOARD_NAME :=ef46l



TARGET_KERNEL_CONFIG := cm_ef46l_defconfig
TARGET_KERNEL_SOURCE := kernel/pantech/ef46l



#############KERNEL SETTINGS########################
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=ef46l androidboot.carrier=LGT-KOR user_debug=31 msm_rtb.filter=0x3F loglevel=0
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x82400000


############INIT SETTINGS###########################

#TARGET_PROVIDES_INIT_RC := true
TARGET_RECOVERY_INITRC := device/pantech/ef46l/recovery/init.rc
#############EMMC SETTINGS##########################
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
#############RECOVERY SETTINGS######################
BOARD_HAS_NO_SELECT_BUTTON := true
#RGBA_8888 BGRA_8888 RGBX_8888
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_UI_LIB := librecovery_ui_ef46l
#BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/ef46l/recovery/graphics.c

#BOARD_TOUCH_RECOVERY:=true
BOARD_UMS_LUNFILE := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file
BOARD_RECOVERY_ALWAYS_WIPES :=true
BOARD_RECOVERY_HANDLES_MOUNT :=true


#
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

BOARD_VOLD_MAX_PARTITIONS := 36


BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0,pdp0"




