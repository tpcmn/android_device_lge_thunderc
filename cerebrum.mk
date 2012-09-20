## Specify phone tech before including full_phone
$(call inherit-product, vendor/cerebrum/config/gsm.mk)

PRODUCT_RELEASE_NAME := OptimusOne

# Inherit some common stuff.
$(call inherit-product, vendor/cerebrum/config/common_full_phone.mk)

# Inherit device configuration.
$(call inherit-product, device/lge/p500/p500.mk)


PRODUCT_NAME := cerebrum_p500
PRODUCT_DEVICE := p500
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P500
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_p500 BUILD_ID=IMM76D BUILD_FINGERPRINT=lge/thunderg/thunderg:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="thunderg-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849
