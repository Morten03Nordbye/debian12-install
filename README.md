# debian12-install
## root
su - root
apt update && apt install -y sudo
usermod -aG sudo mnordbye
reboot
## mnordbye
sudo apt update && sudo apt install -y i3 x11-xserver-utils pulseaudio nm-tray network-manager vim
sudo apt install sddm qml‑module‑qtquick‑layouts qml‑module‑qtgraphicaleffects qml‑module‑qtquick‑controls2 libqt5svg5 ‑‑no‑install‑recommends

