-include vendor/lge/thunderc/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := aaathunderc-test1_defconfig
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc
#BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc androidboot.selinux=permissive 
COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"lge.reboot"' -DBOARD_CHARGING_CMDLINE_VALUE='"pwroff"'
TARGET_BOOTLOADER_BOARD_NAME := thunderc
TARGET_OTA_ASSERT_DEVICE := thunderc,LS670,VM670,thunderc_LS670,thunderc_VM670
TARGET_RECOVERY_FSTAB := device/lge/thunderc/fstab.thunderc

#TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
#BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_NO_BOOTLOADER := true
#BOARD_USES_RECOVERY_CHARGEMODE := false 
#TARGET_RECOVERY_INITRC := device/lge/thunderc/init.recovery.rc
#twrp
#DEVICE_RESOLUTION := 320x480
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_NO_REBOOT_BOOTLOADER := true
#LOCAL_CFLAGS += -DTW_NO_REBOOT_BOOTLOADER
#TW_CUSTOM_POWER_BUTTON := 107 

#TARGET_RECOVERY_PIXEL_FORMAT := RGB_565
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"

SMALLER_FONT_FOOTPRINT := true


#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/thunderc/bluetooth

P500_SPEAKER_IN_CALL_FIX := true

