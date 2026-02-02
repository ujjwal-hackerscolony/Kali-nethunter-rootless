#!/data/data/com.termux/files/usr/bin/bash

set -e

clear
echo "================================="
echo " Kali NetHunter Rootless Installer"
echo " Author: Master_Termux"
echo "================================="
sleep 2

echo "[+] Requesting storage permission..."
termux-setup-storage
sleep 2

echo "[+] Updating Termux packages..."
pkg update -y && pkg upgrade -y

echo "[+] Installing required packages..."
pkg install -y wget curl proot tar unzip git