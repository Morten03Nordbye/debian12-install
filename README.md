# debian12-install
## root
su - root
apt update && apt install -y sudo
usermod -aG sudo mnordbye
reboot
## mnordbye
sudo apt update && sudo apt install -y i3 x11-xserver-utils pulseaudio nm-tray network-manager vim gnupg2 arandr terminator zip 
sudo apt install sddm ‑‑no‑install‑recommends -y
sudo apt install --no-install-recommends qml-module-qtgraphicaleffects qml-module-qtquick-controls2 qml-module-qtquick-layouts libqt5svg5
sudo mkdir -p /usr/share/sddm/themes
sudo mkdir -p /etc/sddm.conf.d
sddm --example-config > /home/mnordbye/sddm.conf
sudo mv /home/mnordbye/sddm.conf /etc/sddm.conf.d/
