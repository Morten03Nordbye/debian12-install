
# Debian 12 Installation Guide

## 1. Root User Setup
```bash
su - root
apt update && apt install -y sudo
usermod -aG sudo mnordbye
reboot
```

## User Setup (mnordbye)
### System Update and Essential Packages
```bash
sudo apt update && sudo apt install -y i3 x11-xserver-utils pulseaudio nm-tray network-manager vim gnupg2 arandr terminator zip
```

### Install SDDM (Simple Desktop Display Manager)
```bash
sudo apt install sddm --no-install-recommends -y
```
### Configure SDDM
```bash
sudo mkdir -p /usr/share/sddm/themes
sudo mkdir -p /etc/sddm.conf.d
sddm --example-config > /home/mnordbye/sddm.conf
sudo mv /home/mnordbye/sddm.conf /etc/sddm.conf.d/
```
### Install Additional SDDM Modules
```bash
sudo apt install qml-module-qtgraphicaleffects qml-module-qtquick-controls
```
### Download and Install SDDM Theme
Download tar from https://www.opendesktop.org/p/1240784
```bash
sudo tar -xzvf ~/Downloads/sddm-chili.tar.tar -C /usr/share/sddm/themes
sudo vim /etc/sddm.conf.d/sddm.conf
```
### Configure grub theme
```bash
Download zip from https://github.com/shvchk/poly-dark

```
### Install and Configure GTK Themes
```bash
sudo apt install lxappearance arc-theme papirus-icon-theme -y
```

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
