#!/bin/bash

gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

#Unite gnome-extension
wget https://github.com/hardpixel/unite-shell/releases/download/v85/unite-v85.zip
gnome-extensions install --force unite-v85.zip

gnome-extensions install --force ../gnome-extensions/pcmonitor.zip

gnome-extensions enable unite@hardpixel.eu
gnome-extensions enable pcmonitor@eskinderget@gmail.com
