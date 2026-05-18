#!/system/bin/sh

# Terminal Color Codes
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
BOLD='\033[1m'
RESET='\033[0m'

clear
echo -e "${RED}${BOLD}"
echo "╔════════════════════════════════════════════════════╗"
echo "║               SURESH CONFIG V1💀🗿                 ║"
echo "╚════════════════════════════════════════════════════╝"

echo ""
sleep 0.7
echo -e "${CYAN}${BOLD}⚙️ Applying Drag Headshot File...${RESET}"
SRC2="/data/ota/CHEST"
DEST2="/data/user/0/com.dts.freefiremax/files/contentcache/Compulsory/android/gameassetbundles/cache_res.~2BrPJlgpDAnfyUCp~2Biox5bwsZlQQ~3D.bak"

if cp "$SRC2" "$DEST2"; then
    echo -e "${GREEN}${BOLD}✅ DRAG HEAD APPLYING SUCCESSFULLY !${RESET}"
else
    echo -e "${RED}${BOLD}❌ ERROR: Drag ʜᴇᴀᴅ ɪɴᴊᴇᴄᴛɪᴏɴ ꜰᴀɪʟᴇᴅ.${RESET}"
fi

echo ""
sleep 0.5
echo -e "${CYAN}${BOLD}⚙️ Executing TRINITY_X Swap Script...${RESET}"

ORIGINAL="/data/user/0/com.dts.freefiremax/files/contentcache/Compulsory/android/gameassetbundles/cache_res.~2BrPJlgpDAnfyUCp~2Biox5bwsZlQQ~3D"
BACKUP="$ORIGINAL.bak"
TMP="$ORIGINAL.tmp"

# File checks ke sath swap (is process mein chown aur chmod 100% same rahenge)
if [ -f "$ORIGINAL" ] && [ -f "$BACKUP" ]; then
    mv "$ORIGINAL" "$TMP"
    mv "$BACKUP" "$ORIGINAL"
    mv "$TMP" "$BACKUP"
    echo -e "${GREEN}${BOLD}✅ TRINITY_X FILES SWAPPED & RESTORED SUCCESSFULLY !${RESET}"
elif [ -f "$ORIGINAL" ] && [ ! -f "$BACKUP" ]; then
    # Agar pehli baar run kar rahe hain aur .bak nahi hai, toh safe backup banayega (permissions intact)
    cp -p "$ORIGINAL" "$BACKUP"
    echo -e "${YELLOW}${BOLD}⚠️ .bak file nahi thi, original se backup create kar diya gaya hai.${RESET}"
else
    echo -e "${RED}${BOLD}❌ ERROR: TRINITY_X Original file nahi mili.${RESET}"
fi

echo ""
sleep 0.5
echo -e "${WHITE}${BOLD}═══════════════════════════════════════════════════════${RESET}"
echo -e "${GREEN}${BOLD}🗿 BRO HACKS USE MAT KR FEEDBACK BHI DE 🗿${RESET}"
echo -e "${WHITE}${BOLD}═══════════════════════════════════════════════════════${RESET}"