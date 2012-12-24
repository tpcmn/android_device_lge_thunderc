PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/thunderc/thunderc-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/thunderc/overlay

# thunderc configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    $(LOCAL_PATH)/configs/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/wireless.ko:system/lib/modules/wireless.ko \
    $(LOCAL_PATH)/configs/tun.ko:system/lib/modules/tun.ko \
    $(LOCAL_PATH)/configs/librasdioif.ko:system/lib/modules/librasdioif.ko \
	$(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \
	$(LOCAL_PATH)/configs/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

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
PRODUCT_MODEL := LG-thunderc

CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120


PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(CDMA_GOOGLE_BASE) \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC)

