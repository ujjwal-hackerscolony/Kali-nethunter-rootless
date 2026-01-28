#!/usr/bin/env bash

Edit values here if you want non-defaults.

KALI_DIR="$HOME/kali-rootfs

Rootfs directory

Desktop environment: xfce, mate, lxde, kde

VNC_MODE="${VNC_MODE:-tigervnc}"

5901

VNC options

Rootfs URLs (fallbacks). You may replace with official/artifact URLs suitable for your arch.



VNC_PASSWORD="${VNC_PASSWORD:-kali}"
VNC_DISPLAY="${VNC_DISPLAY:-:1}"
VNC_PORT="${VNC_PORT:-5901}"      # display :1 -> 5901
NOVNC_PORT="${NOVNC_PORT:-6080}" # noVNC web port

install.sh

If using proot-distro, install.sh will prefer proot-distro.

