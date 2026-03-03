#!/bin/bash
rpm-ostree upgrade 
echo "" 
brew update 
echo "" 
brew upgrade 
echo "Flatpak update:" 
yes | flatpak update 
echo "" 
/home/pauls/Desktop/Other/music_stuff/yt-dlp -U 
echo "" 
ujust update-firmware 
echo "" 
rpm-ostree status
