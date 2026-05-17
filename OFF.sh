#!/system/bin/sh
# TRINITY_X Swap Script — Pure swap, no permission changes

ORIGINAL="/data/user/0/com.dts.freefiremax/files/split_asset_pack_install_time.apk.pdcache"
BACKUP="$ORIGINAL.bak"
TMP="$ORIGINAL.tmp"

# Swap files without changing permissions/owner/group
mv "$ORIGINAL" "$TMP"
mv "$BACKUP" "$ORIGINAL"
mv "$TMP" "$BACKUP"
