#!/data/data/com.termux/files/usr/bin/bash

clear
echo "================================="
echo " Kali noVNC Setup Script"
echo "================================="
sleep 1

# Detect NetHunter
if command -v nh >/dev/null 2>&1; then
    NH_CMD="nh"
elif command -v nethunter >/dev/null 2>&1; then
    NH_CMD="nethunter"
else
    echo "[-] Kali NetHunter not installed!"
    exit 1
fi

echo "[+] Entering Kali NetHunter..."
sleep 1

$NH_CMD << 'EOF'

echo "[+] Updating Kali..."
apt update && apt upgrade -y

echo "[+] Installing desktop environment..."
apt install -y xfce4 xfce4-goodies

echo "[+] Installing VNC & noVNC..."
apt install -y tightvncserver novnc websockify

echo "[+] Setting VNC password..."
vncserver

echo "[+] Configuring Xfce session..."
echo "#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
exec startxfce4 &
" > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup

echo "[✓] noVNC setup completed inside Kali!"
echo "Exit Kali and run start_novnc.sh"

exit
EOF

#!/data/data/com.termux/files/usr/bin/bash

# Start VNC
vncserver -localhost

# Start noVNC
websockify --web=/usr/share/novnc/ 6080 localhost:5901

http://127.0.0.1:6080

kali-nethunter-rootless-termux/
├── install.sh
├── start.sh
├── enter.sh
├── stop.sh
├── Setup_novnc.sh
├── start_novnc.sh
├── config.sh
├── README.md