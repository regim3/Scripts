#!/bin/bash


#Installs Flat Remix and StarLabs

# This will install flat remix, flat remix gtk and flat remix gnome
# Firstly, cloning all repo. to ./Projects
cd
mkdir Projects
cd Projects
git clone https://github.com/daniruiz/flat-remix-gtk.git
git clone https://github.com/daniruiz/flat-remix.git
git clone https://github.com/daniruiz/flat-remix-gnome.git
git clone https://github.com/StarLabsLtd/starlabs-cursor-theme.git ##Cursor Theme
# Now, moving .themes to .themes-backup
mv .themes .themes-backup
# .themes contain both gtk and gnome themes, we're just creating a link at that location for the downloaded theme
# gtk goes into .themes
ln -s ~/Projects/flat-remix-gtk ~/.themes
# gnome goes into .local/share/themes
# the reason i'm doing this is because most of the projects are stored in that folder and id be easy to update the theme later.
# belive me ive tried both
mv .local/share/themes .local/share/themes-backup
ln -s ~/Projects/flat-remix-gnome ~/.local/share/themes
# Now, .icons to .icons-backup
mv .icons .icons-backup
ln -s ~/Projects/flat-remix ~/.icons

##Cursor theme
sudo mv /usr/share/icons/Cursor /usr/share/icons/Cursors-backup
sudo ln -s ~/Projects/starlabs-cursor-theme/themes/StarLabs /usr/share/icons/Cursors


gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue-Darkest-NoBorder"
gsettings set org.gnome.desktop.interface icon-theme 'Flat-Remix-Blue-Dark'
gsettings set org.gnome.desktop.wm.preferences theme "Flat-Remix-Darkest-fullPanel"
gsettings set org.gnome.desktop.interface cursor-theme 'Cursors'
