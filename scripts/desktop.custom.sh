#!/bin/bash

# Install the GNOME desktop
sudo tasksel install desktop gnome-desktop

# Enable the GUI
sudo systemctl set-default graphical.target

# Reboot system for changes to take effect
sudo systemctl reboot
