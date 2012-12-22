# Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Include GSM stuff
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit device configuration for thunderc.
$(call inherit-product, device/lge/thunderc/thunderc.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_thunderc
PRODUCT_BRAND := lge
PRODUCT_DEVICE := thunderc
PRODUCT_MODEL := LG-LS670
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_thunderc \
    BUILD_FINGERPRINT="lge/thunderg/thunderg:4.2.1/JOP40D/LG-LS670-V20g.19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="thunderg-user 4.2.1 JOP40D LG-thunderc-V20g.19C11F164C release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := LS670
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
