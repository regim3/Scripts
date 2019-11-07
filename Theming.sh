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

# Now, moving .themes to .themes-backup
mv .themes .themes-backup

# .themes contain both gtk and gnome themes, we're just creating a link at that location for the downloaded theme

# gtk goes into .themes
ln -s ~/Projects/flat-remix-gtk ~/.themes

# gnome goes into .local/share/themes
mv .local/share/themes .local/share/themes-backup
ln -s ~/Projects/flat-remix-gnome ~/.local/share/themes

# Now, .icons to .icons-backup
mv .icons .icons-backup
ln -s ~/Projects/flat-remix ~/.icons

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
echo Flat-Remix-GTK-Yellow-Darkest

echo Enter choice :
read flatremixgtk
gsettings set org.gnome.desktop.interface gtk-theme "$flatremixgtk"
echo $flatfemixgtk Applied !!

# option to select icon theme
echo Flat-Remix-Blue     Flat-Remix-Blue-Light    Flat-Remix-Blue-Dark
echo Flat-Remix-Yellow   Flat-Remix-Yellow-Light  Flat-Remix-Yellow-Dark
echo Flat-Remix-Green    Flat-Remix-Green-Light   Flat-Remix-Green-Dark
echo Flat-Remix-Red      Flat-Remix-Red-Light     Flat-Remix-Red-Dark

echo Enter Choice :
read flatremix
gsettings set org.gnome.desktop.interface icon-theme "$flatremix"
echo $flatremix Applied !

#option to select gnome theme
echo Flat-Remix                    Flat-Remix-fullPanel
echo Flat-Remix-Dark               Flat-Remix-Dark-fullPanel
echo Flat-Remix-Miami              Flat-Remix-Miami-fullPanel
echo Flat-Remix-Miami-Dark         Flat-Remix-Miami-Dark-fullPanel
echo Flat-Remix-Darkest            Flat-Remix-Darkest-fullPanel

echo Enter Choice :
read flatremixgnome
gsettings set org.gnome.desktop.wm.preferences theme "$flatremixgnome"
echo $flatremixgnome Applied !

echo Thanks : )
echo Check out my GitHub profile at github.com/kushagrakarira
