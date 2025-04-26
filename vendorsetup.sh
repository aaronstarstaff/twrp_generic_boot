#

add_lunch_combo twrp_boot-eng \
add_lunch_combo twrp_boot-userdebug
export FOX_RECOVERY_VENDOR_BOOT_PARTITION="/dev/block/platform/14700000.ufs/by-name/vendor_boot"
export FOX_VENDOR_BOOT_RECOVERY=1
