# debian12-install
## root
su - root
apt update && apt install -y sudo
usermod -aG sudo mnordbye
reboot
## mnordbye
sudo apt update && sudo apt install -y i3 x11-xserver-utils pulseaudio nm-tray network-manager vim gnupg2 arandr terminator zip 
sudo apt install sddm ‑‑no‑install‑recommends -y
### Install sddm
sudo mkdir -p /usr/share/sddm/themes
sudo mkdir -p /etc/sddm.conf.d
sddm --example-config > /home/mnordbye/sddm.conf
sudo mv /home/mnordbye/sddm.conf /etc/sddm.conf.d/
sudo apt install qml-module-qtgraphicaleffects qml-module-qtquick-controls
#### Download zip
https://www.opendesktop.org/p/1240784
sudo tar -xzvf ~/Downloads/sddm-chili.tar.gz -C /usr/share/sddm/themes
sudo vim /etc/sddm.conf.d/sddm.conf

