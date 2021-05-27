#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
#apt-get -y install dialog apt-utils
# Install the GNOME desktop
#sudo tasksel install desktop gnome-desktop
echo "Install Desktop environment"
#sudo apt-get install gnome-core --no-install-recommends
sudo apt-get -y install task-gnome-desktop --no-install-recommends
# Enable the GUI
#sudo systemctl set-default graphical.target
echo "Ensure Grub has quiet splash setting"
sudo sed -i '/GRUB_CMDLINE_LINUX_DEFAULT/c\GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"' /etc/default/grub

echo "Update Grub"
sudo update-grub2

echo "Install plymouth"
sudo apt-get -y install plymouth plymouth-themes

# Reboot system for changes to take effect
echo "Rebooting"
sudo systemctl reboot
