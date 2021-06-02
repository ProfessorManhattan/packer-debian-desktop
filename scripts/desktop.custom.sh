#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"

# Install the GNOME desktop
echo "Install Desktop environment"
sudo apt-get -y install task-gnome-desktop --no-install-recommends
echo "Ensure Grub has quiet splash setting"
sudo sed -i '/GRUB_CMDLINE_LINUX_DEFAULT/c\GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"' /etc/default/grub
echo "Update Grub"
sudo update-grub2
echo "Install Plymouth"
sudo apt-get -y install plymouth plymouth-themes

# Reboot system for changes to take effect
echo "Rebooting"
sudo systemctl reboot
