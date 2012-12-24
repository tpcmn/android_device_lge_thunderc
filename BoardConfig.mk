-include vendor/lge/thunderc/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

#TARGET_KERNEL_CONFIG := cyanogenmod_p500_p509_defconfig
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/thunderc/bluetooth

TARGET_BOOTLOADER_BOARD_NAME := thunderc
TARGET_OTA_ASSERT_DEVICE := thunderc,LS670,VM670

USE_CAMERA_STUB := false

TARGET_PROVIDES_LIBAUDIO := true
# Enable ICS-backwards compatibility    
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
# Disable PIE since it breaks ICS camera blobs
TARGET_DISABLE_ARM_PIE := true
