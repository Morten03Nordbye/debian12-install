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
sudo tar -xzvf ~/Downloads/sddm-chili.tar.tar -C /usr/share/sddm/themes
sudo vim /etc/sddm.conf.d/sddm.conf
### GTK themes (might change)
sudo apt install lxappearance -y
sudo apt install arc-theme papirus-icon-theme y
### Filbrowser
sudo apt install thunar
### Picom
sudo apt install picom -y
### background
cd /home/mnordbye/Pictures
git clone https://gitlab.com/dwt1/wallpapers.git
sudo apt install nitrogen -y
### Rofi
sudo apt install rofi -y
cd /home/mnordbye/Downloads
git clone https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
cd /home/mnordbye/.config/rofi
### Polybar
sudo apt install polybar -y
### system font
bash -c  "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)"


