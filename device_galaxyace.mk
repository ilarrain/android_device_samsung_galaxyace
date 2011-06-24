$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/galaxyace/galaxyace-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/galaxyace/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/galaxyace/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Boot screen
PRODUCT_COPY_FILES += \
    device/samsung/galaxyace/COOPER.rle:root/COOPER.rle \
    device/samsung/galaxyace/COOPER.rle:recovery/root/COOPER.rle

# kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/galaxyace/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/galaxyace/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/galaxyace/rfs_fat.ko:root/lib/modules/rfs_fat.ko \
    device/samsung/galaxyace/rfs_glue.ko:root/lib/modules/rfs_glue.ko \
    device/samsung/galaxyace/sec_param.ko:root/lib/modules/sec_param.ko

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_galaxyace
PRODUCT_DEVICE := galaxyace
PRODUCT_MODEL := GT-S5830
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=160

PRODUCT_PACKAGES += \
    flash_image \
    dump_image \
    erase_image \
    e2fsck

PRODUCT_LOCALES += mdpi


