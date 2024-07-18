
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
### Install SDDM
```bash
sudo apt install sddm --no-install-recommends -y
```
### Install System Font
```bash
bash -c  "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)"
# Install "Hack" font
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
```bash
mkdir -p  ~/.themes/ 
tar -xf ~/Downloads/Nordic-darker.tar.xz -C ~/.themes/
```
Download icons
https://github.com/bikass/kora
```bash
mkdir -p ~/.local/share/icons/
mv ~/Downloads/kora/kora* ~/.local/share/icons/
```
Download cursors
https://www.gnome-look.org/p/1197198
```bash
mkdir -p ~/.icons/
tar -xf Bibata-Modern-Ice.tar.xz -C ~/.icons/
```
Use lxapperance to set theme, font, mouse and icons
### Install File Browser (Thunar)
```bash
sudo apt install thunar -y
```
### Install Picom
```bash
sudo apt install picom -y
```
Copy over config file
### Set Up Background
```bash
cd /home/mnordbye/Pictures
git clone https://gitlab.com/dwt1/wallpapers.git
sudo apt install nitrogen -y
```
Configure background
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
### Dunst
```bash
sudo apt install dunst -y
mkdir -p ~/.config/dunst
cp /etc/xdg/dunst/dunstrc~/.config/dunst/dunstrc
```
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
sudo apt install cups -y
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
### Copy over all config files(To do)
### Setup better looking encrypted password
#### Install Required Packages

First, update your package list and install the necessary packages for Plymouth and Plymouth themes:
```bash
sudo apt update
sudo apt install plymouth plymouth-themes
```

#### Configure Initramfs to Include Plymouth

Next, configure initramfs to include Plymouth by editing the modules file:
```bash
sudo nano /etc/initramfs-tools/modules
```
Add the following line to the file:
```text
plymouth
```

#### Update Initramfs

Update initramfs to apply the changes:
```bash
sudo update-initramfs -u
```

#### Configure GRUB

Edit the GRUB configuration file to enable Plymouth:
```bash
sudo nano /etc/default/grub
```
Find the line that starts with `GRUB_CMDLINE_LINUX_DEFAULT` and modify it to include `quiet splash`:
```text
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
```

Then, update GRUB to apply the changes:
```bash
sudo update-grub
```

#### Enable Plymouth on Boot

Ensure Plymouth starts early enough in the boot process by creating a new configuration file:
```bash
sudo nano /etc/initramfs-tools/conf.d/plymouth
```
Add the following line to the file:
```text
FRAMEBUFFER=y
```

#### Select the Spinner Plymouth Theme

Set the spinner theme as the default Plymouth theme:
```bash
sudo plymouth-set-default-theme spinner
sudo update-initramfs -u
```

#### Customize the Spinner Theme (Optional)

If you wish to further customize the spinner theme, you can modify its configuration files:

1. Navigate to the Plymouth theme directory:
   ```bash
   cd /usr/share/plymouth/themes/spinner
   ```

2. Edit the configuration file (`spinner.plymouth`) to make any necessary adjustments:
   ```bash
   sudo nano spinner.plymouth
   ```

3. Optionally, you can replace the images used by the spinner theme. For example, you can replace `throbber.png` with your own custom image.

#### Reboot

Reboot your system to see the changes take effect:
```bash
sudo reboot
```

