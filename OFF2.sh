#!/system/bin/sh
# TRINITY_X Swap Script — Pure swap, no permission changes

ORIGINAL="/data/user/0/com.dts.freefiremax/files/contentcache/Compulsory/android/gameassetbundles/cache_res.~2BrPJlgpDAnfyUCp~2Biox5bwsZlQQ~3D"
BACKUP="$ORIGINAL.bak"
TMP="$ORIGINAL.tmp"

# Swap files without changing permissions/owner/group
mv "$ORIGINAL" "$TMP"
mv "$BACKUP" "$ORIGINAL"
mv "$TMP" "$BACKUP"
