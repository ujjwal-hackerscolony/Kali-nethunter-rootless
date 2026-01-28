#!/usr/bin/env bash

Edit values here if you want non-defaults.

KALI_DIR="$HOME/kali-rootfs

Rootfs directory

Desktop environment: xfce, mate, lxde, kde

VNC_MODE="${VNC_MODE:-tigervnc}"

5901

VNC options
 
KALI_MIRROR=

Rootfs URLs (fallbacks). You may replace with official/artifact URLs suitable for your arch.



VNC_PASSWORD="${VNC_PASSWORD:-kali}"
VNC_DISPLAY="${VNC_DISPLAY:-:1}"
VNC_PORT="${VNC_PORT:-5901}"      # display :1 -> 5901
NOVNC_PORT="${NOVNC_PORT:-6080}" # noVNC web port

install.sh

If using proot-distro, install.sh will prefer proot-distro.


https://example.com/kali-amd64-rootfs.tar.gz

https://example.com/kali-x86-rootfs.tar.gz

https://example.com/kali-armhf-rootfs.tar.gz

https://example.com/kali-arm64-rootfs.tar.gz

KALI_ROOTFS_URL_ARM64="${KALI_ROOTFS_URL_ARM64:-https://example.com/kali-arm64-rootfs.tar.gz}"
KALI_ROOTFS_URL_ARM="${KALI_ROOTFS_URL_ARM:-https://example.com/kali-armhf-rootfs.tar.gz}"
KALI_ROOTFS_URL_X86="${KALI_ROOTFS_URL_X86:-https://example.com/kali-x86-rootfs.tar.gz}"
KALI_ROOTFS_URL_X86_64="${KALI_ROOTFS_URL_X86_64:-https://example.com/kali-amd64-rootfs.tar.gz}"

Package manager update mirror (inside Kali)


