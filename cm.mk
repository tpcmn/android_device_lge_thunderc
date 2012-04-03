# Release name
PRODUCT_RELEASE_NAME := OptimusS

TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)
$(call inherit-product, vendor/cm/config/cdma.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Inherit device configuration
$(call inherit-product, device/lge/thunderc/full_thunderc.mk)

#include qcom opensource features
$(call inherit-product, vendor/qcom/opensource/omx/mm-core/Android.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-video/Android.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := thunderc
PRODUCT_NAME := cm_thunderc
PRODUCT_BRAND := Sprint
PRODUCT_MODEL := LS670
PROUDCT_MANUFACTURER := LGE
