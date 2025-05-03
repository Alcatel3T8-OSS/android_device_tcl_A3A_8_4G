#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from A3A_8_4G device
$(call inherit-product, device/tcl/A3A_8_4G/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

PRODUCT_DEVICE := A3A_8_4G
PRODUCT_NAME := omni_A3A_8_4G
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 9027Q
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := 

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="9027X-user 8.1.0 O11019 vB43-0 release-keys"

BUILD_FINGERPRINT := TCL/9027Q/A3A_8_4G:8.1.0/O11019/vB43-0:user/release-keys
