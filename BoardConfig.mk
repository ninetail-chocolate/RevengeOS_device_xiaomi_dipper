#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

BUILD_BROKEN_DUP_RULES := true

DEVICE_PATH := device/xiaomi/dipper

# Assert
TARGET_OTA_ASSERT_DEVICE := dipper

# Display
TARGET_SCREEN_DENSITY := 402

# Kernel
TARGET_KERNEL_CONFIG := canting-dipper_defconfig
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
###Clang-Proton
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := proton
KERNEL_TOOLCHAIN := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-proton/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-gnu-

###EVA-GCC
#KERNEL_TOOLCHAIN := $(shell pwd)/vendor/gcc/eva/host/linux-x86/arm64/bin
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-elf-

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# NFC
TARGET_USES_NQ_NFC := true

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary version
-include vendor/xiaomi/dipper/BoardConfigVendor.mk
