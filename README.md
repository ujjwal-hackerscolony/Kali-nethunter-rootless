# Kali-nethunter-rootless
kali-termux-desktop


Rootless Kali Linux desktop in Termux (Android) — multi-arch, multi-DE, TigerVNC & noVNC support.


quick features

Auto-detect architecture (arm, arm64, x86/x86_64)

Choose desktop environment: xfce, mate, lxde, kde

Scripts: install.sh, start.sh, stop.sh, enter.sh

Configurable via config.sh

Prereqs (on Android / Termux

Termux (Android)

Allow storage: termux-setup-storage

Recommended termux packages: proot, proot-distro (if available), wget, tar, pulseaudio

Basic usage

Edit config.sh as needed (DE, VNC type, ports).

Run: ./install.sh