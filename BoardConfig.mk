# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := galaxyace

# Use screencap to capture frame buffer for ddms
BOARD_USE_SCREENCAP := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
GRALLOC_MODULE_PERFORM_DECIDE_PUSH_BUFFER_HANDLING := true

TARGET_OTA_ASSERT_DEVICE := galaxyace

BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x13600000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0d940000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bc40000
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_BOOT_DEVICE := /dev/block/bml8
BOARD_DATA_DEVICE := /dev/block/stl13
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/stl12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/stl14
BOARD_CACHE_FILESYSTEM := ext4
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_DEVICE := /dev/block/bml9
BOARD_BML_BOOT := /dev/block/bml8
BOARD_BML_RECOVERY := /dev/block/bml9

TARGET_USERIMAGES_USE_EXT4 := true

TARGET_PREBUILT_KERNEL := device/samsung/galaxyace/kernel

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/galaxyace/recovery.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/galaxyace/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS:= ../../../device/samsung/galaxyace/recovery/minui/graphics.c

BOARD_HAS_DOWNLOAD_MODE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BT_ALT_STACK := true
BRCM_BT_USE_BTL_IF := true
BRCM_BTL_INCLUDE_A2DP := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := galaxyace
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm2049
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true

WITH_JIT := true
ENABLE_JSC_JIT := true
WITH_DEXPREOPT := true

# assert
TARGET_OTA_ASSERT_DEVICE := galaxyace,cooper,GT-S5830

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME     := ar6000

JS_ENGINE := v8

# OpenGL drivers config file path
BOARD_EGL_CFG := device/samsung/galaxyace/egl.cfg

# No fallback font by default (space savings)
#NO_FALLBACK_FONT:=true

BOARD_GPS_LIBRARIES := libloc_api

TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBAUDIO := true

BOARD_USE_GR_FLIP_32 := true
BOARD_FB_FORCE_24_BPP := true
BOARD_FB_SINGLE_BUFFERED := true

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

# inherit from the proprietary version
-include vendor/samsung/galaxyace/BoardConfigVendor.mk

BOARD_RECOVERY_HANDLES_MOUNT := true

