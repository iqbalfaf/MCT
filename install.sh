#!/bin/bash

#### Warna ####
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'

version=1.3
source "$(pwd)/spinner.sh"

echo -e okegreen"                                   ";
echo " _|      _|    _|_|_|  _|_|_|_|_|  ";
echo " _|_|  _|_|  _|            _|      ";
echo " _|  _|  _|  _|            _|      ";
echo " _|      _|  _|            _|      ";
echo " _|      _|    _|_|_|      _|    Installer  ";
echo "                               V$version    ";
echo "     Media Converter Termux        ";
echo "          IqbalFAF "

chmod +x spinner.sh

start_spinner 'Updating Repo'
apt update > /dev/null 2>&1
stop_spinner $?
start_spinner 'Install Ncurses'
apt install ncurses-utils -y > /dev/null 2>&1
stop_spinner $? 
start_spinner 'Install ffmpeg'
apt install ffmpeg -y > /dev/null 2>&1
stop_spinner $?
start_spinner 'Install Git'
apt install git -y > /dev/null 2>&1
stop_spinner $?
start_spinner 'Cloning Script MCT'
git clone https://github.com/iqbalfaf/MCT.git > /dev/null 2>&1
stop_spinner $?
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
echo "Version : 1.3"
echo ""
echo "Untuk Menjalankan Tools nya cukup ketikan"
echo "mct"
echo "Terimakasih ^_^"
echo "================== MCT ================== "
cd
