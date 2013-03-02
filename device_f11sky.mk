$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/fujitsu/f11sky/f11sky-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/fujitsu/f11sky/overlay

# Init files in initramfs
PRODUCT_COPY_FILES += \
        device/fujitsu/f11sky/root/init.f11sky.rc:root/init.f11sky.rc \
        device/fujitsu/f11sky/root/init.f11sky.sh:root/init.f11sky.sh \
        device/fujitsu/f11sky/root/ueventd.f11sky.rc:root/ueventd.f11sky.rc

LOCAL_PATH := device/fujitsu/f11sky
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_f11sky
PRODUCT_DEVICE := f11sky
