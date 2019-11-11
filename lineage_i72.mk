# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from i72 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := symphony
PRODUCT_DEVICE := i72
PRODUCT_MANUFACTURER := symphony
PRODUCT_NAME := lineage_i72
PRODUCT_MODEL := i72

PRODUCT_GMS_CLIENTID_BASE := android-symphony
TARGET_VENDOR := symphony
TARGET_VENDOR_PRODUCT_NAME := i72
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="i72-user 8.1.0 OPM2.171019.012 140 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Symphony/i72/i72:8.1.0/OPM2.171019.012/140:user/release-keys
