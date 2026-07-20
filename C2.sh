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
echo "║               PHANTOM X 💀🗿                                       ║"
echo "╚════════════════════════════════════════════════════╝"

echo ""
sleep 0.7
echo -e "${CYAN}${BOLD}⚙️ Applying Drag Headshot File...${RESET}"
SRC2="/data/user/0/com.dts.freefiremax/files/contentcache/Compulsory/android/gameassetbundles/cache_res.~2BrPJlgpDAnfyUCp~2Biox5bwsZlQQ~3D"
DEST2="/storage/emulated/0/Documents/.phantom"

if cp "$SRC2" "$DEST2"; then
    echo -e "${GREEN}${BOLD}✅ DRAG HEAD APPLYING SUCCESSFULLY !${RESET}"
else
    echo -e "${RED}${BOLD}❌ ERROR: Drag ʜᴇᴀᴅ ɪɴᴊᴇᴄᴛɪᴏɴ ꜰᴀɪʟᴇᴅ.${RESET}"
fi

echo ""
sleep 0.5
echo -e "${CYAN}${BOLD}⚙️ Executing PHANTOM_X Script...${RESET}"

ORIGINAL="/storage/emulated/0/Documents/.phantom"

if [ -f "$ORIGINAL" ]; then
    chmod 600 "$ORIGINAL"
    echo -e "${GREEN}${BOLD}✅ PHANTOM_X FILE PERMISSION SET SUCCESSFULLY !${RESET}"
else
    echo -e "${RED}${BOLD}❌ ERROR: PHANTOM_X Original file nahi mili.${RESET}"
fi

echo ""
sleep 0.5
echo -e "${WHITE}${BOLD}═══════════════════════════════════════════════════════${RESET}"
echo -e "${GREEN}${BOLD}🗿 BRO HACKS USE MAT KR FEEDBACK BHI DE 🗿${RESET}"
echo -e "${WHITE}${BOLD}═══════════════════════════════════════════════════════${RESET}"