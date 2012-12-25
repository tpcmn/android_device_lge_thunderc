# Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Include GSM stuff
$(call inherit-product, vendor/cm/config/cdma.mk)
# Inherit device configuration for thunderc.
$(call inherit-product, device/lge/thunderc/thunderc.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/tiny.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_LS670
PRODUCT_BRAND := lge
PRODUCT_DEVICE := LS670
PRODUCT_MODEL := LG-LS670
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_thunderc \
    BUILD_FINGERPRINT="lge/LS670/LS670:2.3.3/GRI40/LG-LS670-V20g.19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="thunderc-user 2.3.3 GRI40  LG-LS670-V20g.19C11F164C release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := LS670
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
