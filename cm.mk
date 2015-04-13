## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)



# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/wiko/bloom/full_bloom.mk)

# Release name
PRODUCT_RELEASE_NAME := bloom

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bloom
PRODUCT_NAME := cm_bloom
PRODUCT_BRAND := wiko
PRODUCT_MODEL := bloom
PRODUCT_MANUFACTURER := wiko
