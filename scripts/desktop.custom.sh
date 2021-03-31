#!/bin/bash

# Install the GNOME desktop
sudo tasksel install desktop gnome-desktop

# Enable the GUI
sudo systemctl set-default graphical.target
