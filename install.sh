#!/usr/bin/env bash
clear
echo "Installer MCT"
sleep 1
clear
echo "Update Repo"
apt update > /dev/null 2>&1
sleep 1
clear
echo "Update Repo Selesai"
sleep 1
clear
echo "Installing Figlet"
apt install figlet -y > /dev/null 2>&1
sleep 1 
clear
echo "Install Figlet Selesai"
sleep 1
clear
echo "Installing ncurses-utils"
apt install ncurses-utils -y > /dev/null 2>&1
sleep 1
clear
echo "Installing ffmpeg"
sleep 1
apt install ffmpeg -y > /dev/null 2>&1
sleep 1
clear
echo "Install ffmpeg Selesai"
sleep 1
clear
echo "Install Script MCT"
git clone https://github.com/iqbalfaf/MCT.git > /dev/null 2>&1
cd
cd MCT/
mv mct.sh mct
mv mct $PREFIX/bin/
chmod +x $PREFIX/bin/mct
sleep 1
clear
echo "Install Script MCT Selesai"
sleep 1
clear
echo "================== MCT ================== "
echo "MEDIA CONVERTER TOOLS"
echo "Version : 1.2"
echo ""
echo "Untuk Menjalankan Tools nya cukup ketikan"
echo "mct"
echo "Terimakasih ^_^"
echo "================== MCT ================== "
cd
rm -rf MCT/
