#!/bin/bash

echo This will install flat remix, flat remix gtk and flat remix gnome
echo Firstly, cloning all repo. to ./Projects
cd
mkdir Projects
cd Projects
git clone https://github.com/daniruiz/flat-remix-gtk.git
git clone https://github.com/daniruiz/flat-remix.git
git clone https://github.com/daniruiz/flat-remix-gnome.git
echo Now, moving .themes to .themes-backup
mv .themes .themes-backup
# .themes contain both gtk and gnome themes, we're just creating a link at that location for the downloaded theme
# gtk goes into .themes
ln -s .themes ./Projects/flat-remix-gtk
# gnome goes into .local/share/themes
# the reason i'm doing this is because most of the projects are stored in that folder and id be easy to update the theme later.
# belive me ive tried both
mv .local/share/themes .local/share/themes-backup
ln -s .local/share/themes ./Projects/flat-remix-gnome
echo Now, .icons to .icons-backup
mv .icons .icons-backup
ln -s .icons ./Projects/flat-remix

echo Hey, user go to gnome-tweaks and apply the theme, i will add more instructions in future relese
echo Let me open it for you
gnome-tweaks
