# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# Camera
TARGET_DISABLE_ARM_PIE := true
BOARD_USES_LEGACY_CAMERA := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true
TARGET_NO_HW_VSYNC := true

# Kernel
#TARGET_KERNEL_SOURCE := kernel/lge/msm7x27
TARGET_PREBUILT_KERNEL := device/lge/thunderc/kernels/test21/zImage
# Copy LG Kernel Headers here if necessary, DON'T use Adroid auto-generated headers
TARGET_SPECIFIC_HEADER_PATH := device/lge/thunderc/include
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=qcom 

# CPU & Platform
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27

# Browser & WebKit
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Boot loader & recovery
TARGET_NO_BOOTLOADER := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_HAS_NO_SELECT_BUTTON := true

# Fix this up by examining /proc/mtd on a running device
BOARD_KERNEL_BASE := 0x12200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00700000
# Ignore that this is much larger than the 190Mb allowed.
# It's only for resolving build issues with the system.img
# being too big. It will still be only about 130MB MAXIMUM.
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a4e0000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xDC00000

# Enable OpenGL Hardware Acceleration
# msm7x27: no support for overlay, bypass, or c2d
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_GENLOCK := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_EGL_CFG := device/lge/thunderc/configs/egl.cfg
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

# OMX
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX

# Enable the GPS HAL & AMSS version to use for GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Audio & Bluetooth & FM Radio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_CDMA_NETWORK := true

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Mass Storage for ICS
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
#BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/thunderc/prebuilt/UsbController.cpp
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file
##TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
#BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
#BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
BOARD_SDEXT_DEVICE := /dev/block/vold/179:2

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Wi-Fi & Wi-Fi HotSpot
WPA_SUPPLICANT_VERSION          := VER_0_6_X
BOARD_WLAN_DEVICE               := bcm4325
BOARD_WEXT_NO_COMBO_SCAN        := true
BOARD_WPA_SUPPLICANT_DRIVER     := WEXT
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_FW_PATH_STA         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_PATH_AP          := "/system/etc/wl/rtecdc-apsta.bin"

# OTA script
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/lge/thunderc/releasetools/ota_from_target_files

PRODUCT_RESTRICT_VENDOR_FILES := false

WITH_DEXPREOPT := false

# Save some space on the device
MINIMAL_FONT_FOOTPRINT := true
BOARD_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"lge.reboot"' -DBOARD_CHARGING_CMDLINE_VALUE='"pwroff"'