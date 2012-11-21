# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

include vendor/lge/thunderc/BoardConfigVendor.mk

# Camera
# http://r.cyanogenmod.com/#/c/13317/
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT -DFORCE_CPU_UPLOAD -DCPU_COLOR_CONVERT -DUSES_NAM
USES_NAM := true
#-DMISSING_EGL_PIXEL_FORMAT_YV12 
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true
# This is needed by libcamera.so 
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
## Fixes colors in panorama
BOARD_CPU_COLOR_CONVERT := true
HAVE_QC_TIME_SERVICES := true
BOARD_HAVE_QC_TIME_SERVICES := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_HAS_NO_SELECT_BUTTON := true

# Enable WEBGL in WebKit  
ENABLE_WEBGL := true
#ENABLE_WEBAUDIO := false  
ENABLE_WTF_USE_ACCELERATED_COMPOSITING := true
 


# Kernel
#TARGET_KERNEL_SOURCE := kernel/lge/thunderc
#TARGET_KERNEL_CONFIG := cyanogenmod_thunderc_defconfig
TARGET_PREBUILT_KERNEL := device/lge/thunderc/kernels/test21/zImage
TARGET_SPECIFIC_HEADER_PATH := device/lge/thunderc/include

# Platform
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
#PLATFORM_VENDOR := qcom

# CPU
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

#Device Information
TARGET_ARCH := arm
TARGET_PROVIDES_INIT_TARGET_RC := true

# Boot loader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := thunderc
TARGET_OTA_ASSERT_DEVICE := thunderc,LS670,thunderc_LS670,VM670
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_BOOTANIMATION_USE_RGB565 := true
#TARGET_BOOTANIMATION_TEXTURE_CACHE := true
#TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# QCOM Hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_CDMA_NETWORK := true

# Enable OpenGL Hardware Acceleration
# msm7x27: no support for overlay, bypass, or c2d
USE_OPENGL_RENDERER := true
TARGET_USE_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_GENLOCK := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true 
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_EGL_CFG := vendor/lge/thunderc/proprietary/$(SUB_MODEL)/lib/egl/egl.cfg
BOARD_NEEDS_MEMORYHEAPPMEM := true

# http://www.slideshare.net/jserv/design-and-concepts-of-android-graphics
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27 -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX 
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12 

# Skia
BOARD_USE_SKIA_LCDTEXT := true

# Fix this up by examining /proc/mtd on a running device
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc
BOARD_KERNEL_BASE := 0x12200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00700000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x09e80000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a4e0000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/thunderc/recovery/graphics.c 

# Audio & Bluetooth
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# RIL
#BOARD_PROVIDES_LIBRIL := true

# Enable the GPS HAL & AMSS version to use for GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := thunderc
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Nedeed for LGP500 sensors
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

# Enable JIT
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true


# Mass Storage for ICS
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

# Wireless
BOARD_WLAN_DEVICE               := bcm4325
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
#WIFI_DRIVER_MODULE_ARG          := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WPA_SUPPLICANT_VERSION          := VER_0_6_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmd4325
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WEXT_NO_COMBO_SCAN        := true
BOARD_WPA_SUPPLICANT_DRIVER     := WEXT
BOARD_HAVE_LEGACY_HOSTAPD := true

# FM Radio
BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DFM_RADIO

TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RECOVERY := true
#TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
#TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os

#Camera
#BOARD_USE_FROYO_LIBCAMERA := true


BOARD_CUSTOM_BRCM_PATCHRAM_PLUS := ../../../device/lge/thunderc/prebuilt/brcm_patchram_plus.c


#ICS settings
#DISABLE_DEXPREOPT := true
#BOARD_NO_PAGE_FLIPPING := true
#BUILD_OLD_LIBCAMERA:= true
TARGET_FORCE_CPU_UPLOAD := true


# Command line for charging mode 
BOARD_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"lge.reboot"' -DBOARD_CHARGING_CMDLINE_VALUE='"pwroff"'
#BOARD_CHARGING_CMDLINE_NAME := "lge.reboot" 
#BOARD_CHARGING_CMDLINE_VALUE := "pwroff" 
BOARD_USES_RECOVERY_CHARGEMODE := false 

#twrp
DEVICE_RESOLUTION := 320x480
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
LOCAL_CFLAGS += -DTW_NO_REBOOT_BOOTLOADER
TW_CUSTOM_POWER_BUTTON := 107 

#TARGET_RECOVERY_PIXEL_FORMAT := RGB_565
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"



