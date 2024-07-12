
# Debian 12 Installation Guide

## 1. Root User Setup
```bash
su - root
apt update && apt install -y sudo
usermod -aG sudo mnordbye
reboot
```

## 2. User Setup (mnordbye)
### 2.1 System Update and Essential Packages
```bash
sudo apt update && sudo apt install -y i3 x11-xserver-utils pulseaudio nm-tray network-manager vim gnupg2 arandr terminator zip
```

### 2.2 Install SDDM (Simple Desktop Display Manager)
```bash
sudo apt install sddm --no-install-recommends -y
```
#### Configure SDDM
```bash
sudo mkdir -p /usr/share/sddm/themes
sudo mkdir -p /etc/sddm.conf.d
sddm --example-config > /home/mnordbye/sddm.conf
sudo mv /home/mnordbye/sddm.conf /etc/sddm.conf.d/
```
#### Install Additional SDDM Modules
```bash
sudo apt install qml-module-qtgraphicaleffects qml-module-qtquick-controls
```
#### Download and Install SDDM Theme
```bash
wget https://www.opendesktop.org/p/1240784 -O ~/Downloads/sddm-chili.tar.tar
sudo tar -xzvf ~/Downloads/sddm-chili.tar.tar -C /usr/share/sddm/themes
sudo vim /etc/sddm.conf.d/sddm.conf
```

### 2.3 Install and Configure GTK Themes
```bash
sudo apt install lxappearance arc-theme papirus-icon-theme -y
```

### 2.4 Install File Browser (Thunar)
```bash
sudo apt install thunar -y
```

### 2.5 Install Picom
```bash
sudo apt install picom -y
```

### 2.6 Set Up Background
```bash
cd /home/mnordbye/Pictures
git clone https://gitlab.com/dwt1/wallpapers.git
sudo apt install nitrogen -y
```

### 2.7 Install and Configure Rofi
```bash
sudo apt install rofi -y
cd /home/mnordbye/Downloads
git clone https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
cd /home/mnordbye/.config/rofi
```

### 2.8 Install Polybar
```bash
sudo apt install polybar -y
```

### 2.9 Install System Font
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
