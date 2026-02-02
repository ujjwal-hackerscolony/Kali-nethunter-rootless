./start.sh

#!/data/data/com.termux/files/usr/bin/bash

clear
echo "================================="
echo " Kali NetHunter Rootless Starter"
echo "================================="
sleep 1

# Check Termux
if [ ! -d "$PREFIX" ]; then
    echo "[-] Termux environment not found!"
    exit 1
fi

# Check NetHunter command
if command -v nh >/dev/null 2>&1; then
    echo "[+] Starting Kali NetHunter Rootless..."
    sleep 1
    nh
elif command -v nethunter >/dev/null 2>&1; then
    echo "[+] Starting Kali NetHunter Rootless..."
    sleep 1
    nethunter
else
    echo "[-] Kali NetHunter not installed!"
    echo "Run ./install.sh first"
    exit 1
fi

# Load config
if [ -f config.sh ]; then
    source config.sh
fi

$NH_CMD

NH_CMD="nh"

chmod +x start.sh
./start.sh

GREEN='\033[1;32m'
RED='\033[1;31m'
NC='\033[0m'

echo -e "${GREEN}[+] Starting Kali...${NC}"

kali-nethunter-rootless-termux/
├── install.sh
├── start.sh
├── config.sh
├── README.md