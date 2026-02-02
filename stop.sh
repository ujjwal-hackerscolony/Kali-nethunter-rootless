#!/data/data/com.termux/files/usr/bin/bash

clear
echo "================================="
echo " Kali NetHunter Rootless Stopper"
echo "================================="
sleep 1

echo "[+] Checking running Kali processes..."

# Check if proot is running
if pgrep -f "proot.*kali" >/dev/null; then
    echo "[+] Stopping Kali NetHunter Rootless..."
    pkill -f "proot.*kali"
    sleep 1
    echo "[✓] Kali NetHunter stopped successfully!"
else
    echo "[-] Kali NetHunter is not running."
fi

if pgrep -f "nethunter" >/dev/null; then
    pkill -f nethunter
fi



KALI_PROCESS="proot.*kali"

source config.sh

if pgrep -f "$KALI_PROCESS" >/dev/null; then
    pkill -f "$KALI_PROCESS"
    echo "[✓] Kali stopped"
else
    echo "[-] Kali not running"
fi

chmod +x stop.sh
./stop.sh

exit

kali-nethunter-rootless-termux/
├── install.sh
├── start.sh
├── stop.sh
├── config.sh
├── README.md