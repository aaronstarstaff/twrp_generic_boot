#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := device/google/oriole

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from virtual AB OTA config
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

$(call inherit-product-if-exists, vendor/google_devices/oriole/prebuilts/device-vendor-oriole.mk)
$(call inherit-product-if-exists, vendor/google_devices/gs101/prebuilts/device-vendor.mk)
$(call inherit-product-if-exists, vendor/google_devices/gs101/proprietary/device-vendor.mk)
$(call inherit-product-if-exists, vendor/google_devices/oriole/proprietary/oriole/device-vendor-oriole.mk)
$(call inherit-product-if-exists, vendor/google_devices/oriole/proprietary/device-vendor.mk)

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# A/B OTA
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    odm \
    product \
    system \
    system_dlkm \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_boot

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    checkpoint_gc \
    update_engine \
    update_engine_client \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# HAL Bootctrl Pixel
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-service-pixel \
    android.hardware.boot@1.2-impl-pixel

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd 

# vndservicemanager and vndservice no longer included in API 30+, however needed by vendor code.
PRODUCT_PACKAGES += vndservicemanager
PRODUCT_PACKAGES += vndservice


# Build libtrusty
PRODUCT_PACKAGES += libtrusty

# Build libion
PRODUCT_PACKAGES += \
    libion

# Init files
PRODUCT_COPY_FILES += \
	device/google/oriole/recovery/root/init.recovery.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.recovery.usb.rc \
	device/google/oriole/init.oriole.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.oriole.rc \
        device/google/oriole/recovery/root/init.recovery.oriole.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.recovery.oriole.rc \
