#!/system/bin/sh
# PHANTOM_X Advanced Script — Fixed Logic Order

# Path Configurations
OTA_BODY="/data/ota/BODY"
TARGET_DIR="/data/user/0/com.dts.freefiremax/files/contentcache/Compulsory/android/gameassetbundles"
ORIGINAL="$TARGET_DIR/cache_res.~2BrPJlgpDAnfyUCp~2Biox5bwsZlQQ~3D"
BACKUP="$ORIGINAL.bak"
TMP="$ORIGINAL.tmp"

echo "[*] Process shuru ho raha hai..."

# STEP 1: Check karna ki kya original game file wahan maujood hai
if [ ! -f "$ORIGINAL" ]; then
    echo "[-] Error: Asli game file directory me nahi mili!"
    exit 1
fi

# STEP 2: Asli game file ka backup pehle banana (Taaki wo safe rahe aur gayab na ho)
if [ ! -f "$BACKUP" ]; then
    echo "[*] Asli file ka safe backup (.bak) banaya ja raha hai..."
    cp "$ORIGINAL" "$BACKUP"
else
    echo "[*] Backup (.bak) pehle se maujood hai."
fi

# Backup file ko 777 permission dena


# STEP 3: Ab /data/ota/body file ko check aur copy karna
if [ ! -f "$OTA_BODY" ]; then
    echo "[-] Error: /data/ota/body file nahi mili!"
    exit 1
fi

echo "[*] 'body' file ko ab game folder me dala ja raha hai..."
# Hum pehle body file ko ek temporary file me copy karenge
cp "$OTA_BODY" "$TMP"


# STEP 4: SWAP PROCESS (Ab koi file gayab nahi hogi)
echo "[*] Final swapping ki ja rahi hai..."
# Jo body file humne TMP me li thi use ORIGINAL naam de denge
mv "$TMP" "$ORIGINAL"

# Game ke liye permissions fix karna
chmod 777 "$ORIGINAL"

echo "[+] Saare steps successfully complete ho gaye!"
echo "[+] Ab aapki asli file (.bak) me safe hai aur naya file game me apply ho gaya hai."