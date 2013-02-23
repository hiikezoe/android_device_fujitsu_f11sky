USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/fujitsu/f11sky/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_FPU : = neon
TARGET_BOOTLOADER_BOARD_NAME := f11sky

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/fujitsu/f11sky/recovery/keys.c

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=f11sky
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/fujitsu/f11sky/kernel

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := vendor/qcom/adreno200/proprietary/lib/egl/egl.cfg

# for QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
BOARD_USES_QCOM_AUDIO_RESETALL := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_USES_C2D_COMPOSITION := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_NO_SECURE_PLAYBACK -DANCIENT_GL
TARGET_NO_HW_VSYNC := true
TARGET_GRALLOC_USES_ASHMEM := true

ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
#RECOVERY_RGBX := true

TARGET_SPECIFIC_HEADER_PATH := device/fujitsu/f11sky/include

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true