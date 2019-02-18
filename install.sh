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


echo -e okegreen"                                   ";
echo " _|      _|    _|_|_|  _|_|_|_|_|  ";
echo " _|_|  _|_|  _|            _|      ";
echo " _|  _|  _|  _|            _|      ";
echo " _|      _|  _|            _|      ";
echo " _|      _|    _|_|_|      _|    Installer  ";
echo "                               V$version    ";
echo "     Media Converter Termux        ";
echo "          IqbalFAF "


### Cek lib
echo "Cek Lib..."
if [[ -x $PREFIX/bin/slib.sh ]]; then
echo ""
else
	wget -o $PREFIX/bin/slib.sh https://raw.githubusercontent.com/iqbalfaf/MCT/master/slib.sh
	chmod +x $PREFIX/bin/slib.sh
	. ./$PREFIX/bin/slib.sh
fi

run_ok "apt update" "Updating Repo"
run_ok "apt install ncurses-utils -y" "Install Ncurses"
run_ok "apt install ffmpeg -y" "Install ffmpeg"
run_ok "apt install git -y" "Install Git"
run_ok "git clone https://github.com/iqbalfaf/MCT.git" "Cloning Script MCT"
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
