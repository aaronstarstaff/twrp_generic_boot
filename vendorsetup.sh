#
add_lunch_combo twrp_boot-eng \
add_lunch_combo twrp_boot-userdebug
export TARGET_ARCH="arm64-v8a"

# Build environment stuffs
export FOX_BUILD_DEVICE="Pixel6"
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export TARGET_DEVICE_ALT="Pixel6, GooglePixel6, oriole, Oriole"
export FOX_TARGET_DEVICES="Pixel6, GooglePixel6, oriole, Oriole"
export BUILD_USERNAME="nobody"
export BUILD_HOSTNAME="android-build"

# Vendor Boot recovery
export FOX_RECOVERY_VENDOR_BOOT_PARTITION="/dev/block/platform/14700000.ufs/by-name/vendor_boot"
export FOX_VENDOR_BOOT_RECOVERY=1
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_NO_REFLASH_CURRENT_ORANGEFOX=0

# Use magisk boot for patching
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1

# Screen specifications
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=0
export OF_SCREEN_H=2400
export OF_STATUS_H=120

# Device stuff
export OF_KEEP_FORCED_ENCRYPTION=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_FBE_METADATA_MOUNT_IGNORE=1
export OF_USE_LEGACY_BATTERY_SERVICES=1

# Use updated binaries
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_BASH_TO_SYSTEM_BIN=1
export FOX_USE_UPDATED_MAGISKBOOT=1
export FOX_BUILD_BASH=1

# Disable decryption
export OF_SKIP_FBE_DECRYPTION=1

# Add some extras
export FOX_USE_SED_BINARY=1
export FOX_USE_ZIP_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_BUSYBOX_BINARY=1
export FOX_USE_BASH_SHELL=1
export OF_USE_LZ4_COMPRESSION=1 
export FOX_USE_NANO_EDITOR=1
export OF_DONT_KEEP_LOG_HISTORY=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=0
export FOX_INSTALLER_DISABLE_AUTOREBOOT=1
