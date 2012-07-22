# inherit from the proprietary version
-include vendor/lge/su640/BoardConfigVendor.mk

-include device/lge/iprj-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := su640
TARGET_OTA_ASSERT_DEVICE := su640

# Try to build the kernel
TARGET_KERNEL_CONFIG := cyanogenmod_su640_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/lge/su640/kernel

# mmc_erase sometimes hangs and requires a reboot, so skip it
BOARD_SUPPRESS_EMMC_WIPE := true
