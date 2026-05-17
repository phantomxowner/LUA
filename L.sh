#!/system/bin/sh

FILE="/data/user/0/com.dts.freefiremax/files/split_asset_pack_install_time.apk.pdcache"
BAK="/data/user/0/com.dts.freefiremax/files/split_asset_pack_install_time.apk.pdcache.bak"

S1="b1fe63da2accef64a82dde86162deb99"
S2="216a7113b7f1bc74eb2289d47f2a406d"

# Root check
[ "$(id -u)" != "0" ] && echo "ROOT REQUIRED" && exit 1

# Backup
cp "$FILE" "$BAK" || exit 1

# ---- FIND FIRST S1 OFFSET ----
OFF1=$(grep -oba "$S1" "$BAK" | head -n1 | cut -d: -f1)

[ -z "$OFF1" ] && echo "FIRST STRING NOT FOUND" && exit 1

# ---- REPLACE FIRST (S1 -> S2) ----
echo -n "$S2" | dd of="$BAK" bs=1 seek="$OFF1" conv=notrunc 2>/dev/null

# ---- FIND NEXT S2 OFFSET (AFTER CURSOR) ----
START=$((OFF1 + ${#S2}))

OFF2=$(grep -oba "$S2" "$BAK" | awk -F: -v s="$START" '$1 > s {print $1; exit}')

[ -z "$OFF2" ] && echo "NEXT STRING NOT FOUND" && exit 1

# ---- REPLACE NEXT (S2 -> S1) ----
echo -n "$S1" | dd of="$BAK" bs=1 seek="$OFF2" conv=notrunc 2>/dev/null

echo "✅ HEX EDITOR STYLE PATCH DONE (ONLY .bak)"
