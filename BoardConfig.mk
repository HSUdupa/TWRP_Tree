LOCAL_PATH := device/nokia/PLE

TARGET_BOARD_VENDOR := nokia

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_CORTEX_A53 := true

TARGET_USES_64_BIT_BINDER := true
# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8937
TARGET_NO_BOOTLOADER := true

# Kernel
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=400M androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 androidboot.selinux=permissive buildvariant=eng
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_MKBOOTIMG_ARGS :=  --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --kernel_offset 0x00008000 --second_offset 0x00f00000 
BOARD_CUSTOM_BOOTIMG_MK := device/nokia/PLE/mkbootimg.mk
#TARGET_PREBUILT_KERNEL := $(shell pwd)/device/nokia/PLE/zImage
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-androidkernel-
KERNEL_TOOLCHAIN := $(shell pwd)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
TARGET_KERNEL_CONFIG := FIH-msm8937-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/nokia/PLE
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_ARCH := arm64

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26301931008

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
TARGET_CRYPTFS_HW_PATH := device/nokia/PLE/cryptfs_hw
#TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd
TWRP_ENABLE_LOGCAT := true

# TWRP
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_FSTAB := device/nokia/PLE/twrp.fstab
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INPUT_BLACKLIST := "hbtp_vm"
#TW_NEW_ION_HEAP := true
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# Encryption support
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
RECOVERY_VARIANT := twrp
