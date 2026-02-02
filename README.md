Kali-nethunter-rootless
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

Start desktop: ./start.sh
Connect: 
TigerVNC: connect to 127.0.0.1:5901 via your VNC client (use Termux:VNC or connect via SSH port-forward).
127.0.0.1:5901
http://127.0.0.1:6080

noVNC: open http://127.0.0.1:6080 in a browser (or use remote port-forwarding).

git clone https://github.com/USERNAME/REPO
cd REPO
chmod +x install.sh
./install.sh