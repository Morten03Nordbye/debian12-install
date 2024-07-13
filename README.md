
# Debian 12 Installation Guide

Root User Setup
```bash
su - root
apt update && apt install sudo -y
usermod -aG sudo mnordbye
reboot now
```

## User Setup (mnordbye)
### System Update and Essential Packages
```bash
sudo apt update && sudo apt install i3 x11-xserver-utils nm-tray network-manager vim gnupg2 arandr terminator zip curl net-tools -y
```
### Install System Font
```bash
bash -c  "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)"
# Install "Hack" font
echo "Xft.antialias: 1" >> ~/.Xresources
echo "Xft.hinting: 1" >> ~/.Xresources
echo "Xft.hintstyle: hintslight" >> ~/.Xresources
echo "Xft.rgba: rgb" >> ~/.Xresources
echo "Xft.lcdfilter: lcddefault" >> ~/.Xresources
xrdb -merge ~/.Xresources
```
### Install SDDM
```bash
sudo apt install sddm --no-install-recommends -y
```
### Install Additional SDDM Modules
```bash
sudo apt install qml-module-qtgraphicaleffects qml-module-qtquick-controls -y
```
### Configure SDDM
```bash
sudo mkdir -p /usr/share/sddm/themes
sudo mkdir -p /etc/sddm.conf.d
sddm --example-config > /home/mnordbye/sddm.conf
sudo mv /home/mnordbye/sddm.conf /etc/sddm.conf.d/
```
### Download and Install SDDM Theme
Download tar from https://www.opendesktop.org/p/1240784
```bash
sudo tar -xzvf ~/Downloads/sddm-chili.tar.tar -C /usr/share/sddm/themes
```
Change to correct theme
```bash
sudo vim /etc/sddm.conf.d/sddm.conf
```
### Configure grub theme
Download zip from https://github.com/shvchk/poly-dark
Change "GRUB_GFXMODE" to match display
```bash
sudo vim /etc/default/grub
```
```bash
sudo update-grub
```
### Install and Configure GTK Themes
```bash
sudo apt install lxappearance -y
```
Download this theme
https://www.gnome-look.org/p/1267246
Download icons
https://github.com/bikass/kora
### Install File Browser (Thunar)
```bash
sudo apt install thunar -y
```
### Install Picom
```bash
sudo apt install picom -y
```
### Set Up Background
```bash
cd /home/mnordbye/Pictures
git clone https://gitlab.com/dwt1/wallpapers.git
sudo apt install nitrogen -y
```
### Install and Configure Rofi
```bash
sudo apt install rofi -y
cd /home/mnordbye/Downloads
git clone https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
cd /home/mnordbye/.config/rofi
```
### Install Polybar
```bash
sudo apt install polybar -y
```
Copy over config file
### Sound and Media Support
```bash
sudo apt install alsa-utils pavucontrol pulseaudio -y
```
### Bluetooth Support
```bash
sudo apt install bluez blueman -y
```
### Printer Support
```bash
sudo apt install cups
sudo systemctl start cups
sudo systemctl enable cups
```
### Additional Utilities
#### System Monitor (htop)
```bash
sudo apt install htop -y
```
### Office Suite
```bash
sudo apt install libreoffice -y
```
### Media Players
```bash
sudo apt install vlc -y
```
### Remote Desktop
```bash
sudo apt install remmina -y
```
### Backup Tool
```bash
sudo apt install timeshift -y
```
