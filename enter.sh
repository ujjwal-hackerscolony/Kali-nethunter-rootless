#!/data/data/com.termux/files/usr/bin/bash

clear
echo "================================="
echo " Kali NetHunter Rootless Enter"
echo "================================="
sleep 1

# Check NetHunter command
if command -v nh >/dev/null 2>&1; then
    echo "[+] Entering Kali NetHunter..."
    sleep 1
    nh
elif command -v nethunter >/dev/null 2>&1; then
    echo "[+] Entering Kali NetHunter..."
    sleep 1
    nethunter
else
    echo "[-] Kali NetHunter not installed!"
    echo "Run ./install.sh first"
    exit 1
fi


NH_CMD="nh"

#!/data/data/com.termux/files/usr/bin/bash

clear
echo "================================="
echo " Kali NetHunter Rootless Enter"
echo "================================="
sleep 1

# Load config
if [ -f config.sh ]; then
    source config.sh
else
    echo "[-] config.sh not found!"
    exit 1
fi

# Enter Kali
if command -v $NH_CMD >/dev/null 2>&1; then
    echo "[+] Entering Kali NetHunter..."
    sleep 1
    $NH_CMD
else
    echo "[-] NetHunter command not found!"
    exit 1
fi

chmod +x enter.sh
./enter.sh

kali-nethunter-rootless-termux/
├── install.sh
├── start.sh
├── enter.sh
├── stop.sh
├── config.sh
├── README.md

