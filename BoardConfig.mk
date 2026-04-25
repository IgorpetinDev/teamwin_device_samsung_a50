#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 IgorpetinDev
#
# SPDX-License-Identifier: Apache-2.0
#

# Device path
DEVICE_PATH := device/samsung/a50

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal9610
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := exynos9610

# Kernel
TARGET_KERNEL_ARCH := $(TARGET_ARCH)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_RECOVERY_DTBO := true

# BootIMG
LZMA_RAMDISK_TARGETS := recovery
BOARD_RAMDISK_USE_LZMA := true

BOARD_KERNEL_CMDLINE := \
	androidboot.hardware=exynos9610 \
	androidboot.selinux=permissive

BOARD_MKBOOTIMG_ARGS := \
	--base 0x10000000 \
	--kernel_offset 0x00008000 \
	--pagesize 2048 \
	--ramdisk_offset 0x01000000 \
	--tags_offset 0x00000100 \
	--header_version 1

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 57671680
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_DTBIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67633152

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

BOARD_ROOT_EXTRA_FOLDERS := \
	efs \
	omr