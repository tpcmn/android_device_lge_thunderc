## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/cdma.mk)

PRODUCT_RELEASE_NAME := SlimROM.TheJBC

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration.
$(call inherit-product, device/lge/thunderc/thunderc.mk)

#Boot Animation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip


PRODUCT_NAME := slim_thunderc
PRODUCT_DEVICE := thunderc
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-LS670
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_LS670 BUILD_ID=IMM76D BUILD_FINGERPRINT=lge/LS670/thunderc:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="thunderg-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849
