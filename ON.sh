#!/system/bin/sh
# TRINITY_X Swap Script — Backup 777 BEFORE swap

ORIGINAL="/data/user/0/com.dts.freefiremax/files/split_asset_pack_install_time.apk.pdcache"
BACKUP="$ORIGINAL.bak"
TMP="$ORIGINAL.tmp"

# Give backup 777 permissions first
chmod 777 "$BACKUP"

# Swap files
mv "$ORIGINAL" "$TMP"
mv "$BACKUP" "$ORIGINAL"
mv "$TMP" "$BACKUP"
