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
# Option to select the gtk theme
echo Flat-Remix-GTK-Blue
echo Flat-Remix-GTK-Blue-Dark
echo Flat-Remix-GTK-Blue-Darker
echo Flat-Remix-GTK-Blue-Darker-Solid
echo Flat-Remix-GTK-Blue-Darkest
echo Flat-Remix-GTK-Blue-Darkest-NoBorder
echo Flat-Remix-GTK-Blue-Darkest-Solid
echo Flat-Remix-GTK-Blue-Darkest-Solid-NoBorder
echo Flat-Remix-GTK-Blue-Dark-Solid
echo Flat-Remix-GTK-Blue-Solid
echo Flat-Remix-GTK-Green
echo Flat-Remix-GTK-Green-Dark
echo Flat-Remix-GTK-Green-Darker
echo Flat-Remix-GTK-Green-Darker-Solid
echo Flat-Remix-GTK-Green-Darkest
echo Flat-Remix-GTK-Green-Darkest-NoBorder
echo Flat-Remix-GTK-Green-Darkest-Solid
echo Flat-Remix-GTK-Green-Darkest-Solid-NoBorder
echo Flat-Remix-GTK-Green-Dark-Solid
echo Flat-Remix-GTK-Green-Solid
echo Flat-Remix-GTK-Red
echo Flat-Remix-GTK-Red-Dark
echo Flat-Remix-GTK-Red-Darker
echo Flat-Remix-GTK-Red-Darker-Solid
echo Flat-Remix-GTK-Red-Darkest
echo Flat-Remix-GTK-Red-Darkest-NoBorder
echo Flat-Remix-GTK-Red-Darkest-Solid
echo Flat-Remix-GTK-Red-Darkest-Solid-NoBorder
echo Flat-Remix-GTK-Red-Dark-Solid
echo Flat-Remix-GTK-Red-Solid
echo Flat-Remix-GTK-Yellow
echo Flat-Remix-GTK-Yellow-Dark
echo Flat-Remix-GTK-Yellow-Darker
echo Flat-Remix-GTK-Yellow-Darker-Solid
echo Flat-Remix-GTK-Yellow-Darkest
echo Flat-Remix-GTK-Yellow-Darkest-NoBorder
echo Flat-Remix-GTK-Yellow-Darkest-Solid
echo Flat-Remix-GTK-Yellow-Darkest-Solid-NoBorder
echo Flat-Remix-GTK-Yellow-Dark-Solid
echo Flat-Remix-GTK-Yellow-Solid
echo Enter choice : 
read flatremixgtk
gsettings set org.gnome.desktop.interface gtk-theme "$flatremixgtk"

# option to select icon theme
gsettings set org.gnome.desktop.interface icon-theme 'Flat-Remix-Blue-Dark'

#option to select gnome theme
gsettings set org.gnome.desktop.wm.preferences theme "Flat-Remix-Darkest-fullPanel"
gsettings set org.gnome.desktop.interface cursor-theme 'Cursors'
