## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ef46l
TARGET_BOOTANIMATION_NAME := vertical-720x1280


# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone_mini.mk)
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)
# Inherit device configuration
$(call inherit-product, device/pantech/ef46l/device_ef46l.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef46l
PRODUCT_NAME := cm_ef46l
PRODUCT_BRAND := PANTECH
PRODUCT_MODEL := IM-A830L
PRODUCT_MANUFACTURER := pantech
