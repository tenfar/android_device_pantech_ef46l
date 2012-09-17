#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_mini.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony_mini.mk)

# common msm8960 configs
$(call inherit-product, device/pantech/msm8960-common/msm8960.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/pantech/ef46l/ef46l-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef46l/overlay
# NFC Support
PRODUCT_PACKAGES += \
       libnfc \
       libnfc_jni \
       Nfc \
       Tag

#Commands to migrate prefs from com.android.nfc3 to com.android.nfc
PRODUCT_COPY_FILES += \
       packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt

# file that declares the MIFARE NFC constant
#PRODUCT_COPY_FILES += \
#       device/sample/nxp/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

# NFC EXTRAS add-on API
PRODUCT_PACKAGES += \
       com.android.nfc_extras

PRODUCT_COPY_FILES += \
       frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
       frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# NFC
PRODUCT_PACKAGES += \
       nfc.msm8960 \
       libutils \

#quic

PRODUCT_PACKAGES += \
       libsqlite




BOARD_HAVE_NFC := true

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
      device/pantech/ef46l/ramdisk/block_image1.rle:root/block_image1.rle \
      device/pantech/ef46l/ramdisk/block_image2.rle:root/block_image2.rle \
      device/pantech/ef46l/ramdisk/block_image.rle:root/block_image.rle \
      device/pantech/ef46l/ramdisk/charger:root/charger \
      device/pantech/ef46l/ramdisk/default.prop:root/default.prop \
      device/pantech/ef46l/ramdisk/initlogo.rle:root/initlogo.rle \
      device/pantech/ef46l/ramdisk/init.ef46l.rc:root/init.ef46l.rc \
      device/pantech/ef46l/ramdisk/ueventd.ef46l.rc:root/ueventd.ef46l.rc \
      device/pantech/ef46l/ramdisk/fstab.ef46l:root/fstab.ef46l \
      device/pantech/ef46l/ramdisk/init.ef46l.usb.rc:root/init.ef46l.usb.rc \
      device/pantech/ef46l/ramdisk/poweroff_in.rle:root/poweroff_in.rle \
      device/pantech/ef46l/ramdisk/resetlogo.rle:root/resetlogo.rle


# GPS config
#PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf 
#PRODUCT_COPY_FILES += \
       device/pantech/ef46l/dsp/snd_soc_msm/DL_REC:system/etc/snd_soc_msm/DL_REC \
       device/pantech/ef46l/dsp/snd_soc_msm/DL_REC_2x:system/etc/snd_soc_msm/DL_REC_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/FM_A2DP_REC:system/etc/snd_soc_msm/FM_A2DP_REC \
       device/pantech/ef46l/dsp/snd_soc_msm/FM_A2DP_REC_2x:system/etc/snd_soc_msm/FM_A2DP_REC_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/FM_Digital_Radio:system/etc/snd_soc_msm/FM_Digital_Radio \
       device/pantech/ef46l/dsp/snd_soc_msm/FM_Digital_Radio_2x:system/etc/snd_soc_msm/FM_Digital_Radio_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/FM_REC:system/etc/snd_soc_msm/FM_REC \
       device/pantech/ef46l/dsp/snd_soc_msm/FM_REC_2x:system/etc/snd_soc_msm/FM_REC_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/HiFi:system/etc/snd_soc_msm/HiFi \
       device/pantech/ef46l/dsp/snd_soc_msm/HiFi_2x:system/etc/snd_soc_msm/HiFi_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/HiFi_Low_Power:system/etc/snd_soc_msm/HiFi_Low_Power \
       device/pantech/ef46l/dsp/snd_soc_msm/HiFi_Low_Power_2x:system/etc/snd_soc_msm/HiFi_Low_Power_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/HiFi_Rec:system/etc/snd_soc_msm/HiFi_Rec \
       device/pantech/ef46l/dsp/snd_soc_msm/HiFi_Rec_2x:system/etc/snd_soc_msm/HiFi_Rec_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/snd_soc_msm:system/etc/snd_soc_msm/snd_soc_msm \
       device/pantech/ef46l/dsp/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/UL_DL_REC:system/etc/snd_soc_msm/UL_DL_REC \
       device/pantech/ef46l/dsp/snd_soc_msm/UL_DL_REC_2x:system/etc/snd_soc_msm/UL_DL_REC_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/Voice_Call:system/etc/snd_soc_msm/Voice_Call \
       device/pantech/ef46l/dsp/snd_soc_msm/Voice_Call_2x:system/etc/snd_soc_msm/Voice_Call_2x \
       device/pantech/ef46l/dsp/snd_soc_msm/Voice_Call_IP:system/etc/snd_soc_msm/Voice_Call_IP \
       device/pantech/ef46l/dsp/snd_soc_msm/Voice_Call_IP_2x:system/etc/snd_soc_msm/Voice_Call_IP_2x


#PRODUCT_COPY_FILES +=\
		     device/pantech/ef46l/dsp/snd_soc_msm/snd_soc_msm_one:system/etc/snd_soc_msm/snd_soc_msm \
		     device/pantech/ef46l/dsp/snd_soc_msm/snd_soc_msm_2x_one:system/etc/snd_soc_msm/snd_soc_msm \

# Media config
PRODUCT_COPY_FILES += \
    device/pantech/msm8960-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/pantech/msm8960-common/configs/media_codecs.xml:system/etc/media_codecs.xml

# QC thermald config
PRODUCT_COPY_FILES += device/pantech/msm8960-common/configs/thermald.conf:system/etc/thermald.conf

# vold config
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf
#Sound configs
PRODUCT_COPY_FILES += \
       device/pantech/ef46l/dsp/snd_soc_msm/snd_soc_msm_one:system/etc/snd_soc_msm/snd_soc_msm \
       device/pantech/ef46l/dsp/snd_soc_msm/snd_soc_msm_2x_one:system/etc/snd_soc_msm/snd_soc_msm_2x 









# Lights
#PRODUCT_PACKAGES += \
      lights.msm8960

# Torch
PRODUCT_PACKAGES += \
		Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Kernel modules
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/modules/wlan.ko:/system/lib/modules/wlan.ko \
    device/pantech/ef46l/modules/mwlan_aarp.ko:/system/lib/modules/mwlan_aarp.ko

# GPS
PRODUCT_PACKAGES += \
com.qualcomm.location.quipslib.xml \
gpps.conf \
PermissionToAccessLocApi

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y
# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
	persist.sys.usb.config=mass_storage
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0
# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += zh_CN xhdpi 
# Set default USB interface
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320 \
    dalvik.vm.dexopt-data-only=1

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1


# call the proprietary setup
$(call inherit-product-if-exists, vendor/pantech/ef46l/ef46l-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
