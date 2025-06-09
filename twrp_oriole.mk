#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from lynx device
$(call inherit-product, device/google/oriole/device.mk)

PRODUCT_DEVICE := oriole
PRODUCT_NAME := twrp_oriole
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 6
PRODUCT_MANUFACTURER := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC=""

BUILD_FINGERPRINT := 

