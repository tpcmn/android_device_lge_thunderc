PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/lge/thunderc/device.mk)
$(call inherit-product-if-exists, vendor/lge/thunderc/thunderc-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/thunderc/overlay

# thunderc configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thunderc_keypad.kl:system/usr/keylayout/thunderc_keypad.kl \
    $(LOCAL_PATH)/configs/thunderc_keypad.kcm.bin:system/usr/keychars/thunderc_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/wireless.ko:system/lib/modules/wireless.ko \
    $(LOCAL_PATH)/configs/librasdioif.ko:system/lib/modules/librasdioif.ko \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \
	$(LOCAL_PATH)/configs/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

PRODUCT_COPY_FILES += device/lge/thunderc/configs/default.prop:root/default.prop 
PRODUCT_COPY_FILES += device/lge/thunderc/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl 
PRODUCT_COPY_FILES += device/lge/thunderc/configs/Generic.kl:system/usr/keylayout/Generic.kl 
# thunderc init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.thunderc.rc:root/init.thunderc.rc \
    $(LOCAL_PATH)/ueventd.thunderc.rc:root/ueventd.thunderc.rc

# thunderc Audio
PRODUCT_PACKAGES += \
    audio_policy.thunderc \
    audio.primary.thunderc

# Live wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := thunderc
PRODUCT_DEVICE := thunderc
PRODUCT_MODEL := LG-LS670

CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120


PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-sprint-us \
    ro.com.google.locationfeatures=1 \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    gsm.sim.operator.alpha = sprint \
    gsm.sim.operator.numeric = 310120 \
    gsm.sim.operator.iso-country = us \
    gsm.operator.alpha = sprint \
    gsm.operator.numeric = 310120 \
    gsm.operator.iso-country = us
