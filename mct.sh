#!/usr/bin/env bash
##### Converter Audio Termux ####
##### Script By IqbalFAF  ######

#### Warna ####
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'

##### nani kore ? #####
cvta='ffmpeg'
versi='1.3'


source="/data/data/com.termux/files/usr/bin/spinner.sh"


function convertervideo (){
	
echo -e $cyan"  __  __  ___ _____  __   _____ ___  ___ ___  ";
echo " |  \/  |/ __|_   _|_\ \ / /_ _|   \| __/ _ \ ";
echo " | |\/| | (__  | ||___\ V / | || |) | _| (_) |";
echo " |_|  |_|\___| |_|     \_/ |___|___/|___\___/ ";
echo "                                              ";
	echo""
	echo -e $lightgreen"============================================="
echo -e $white" [$okegreen"01"$white]$okegreen Convert Video Ke Audio"
echo -e $white" [$okegreen"02"$white]$okegreen Convert MKV ke MP4"
echo -e $white" [$okegreen"03"$white]$okegreen Convert AVI Ke MP4"
echo -e $white" [$okegreen"04"$white]$okegreen Convert WEBM ke MP4"
echo -e $white" [$okegreen"05"$white]$okegreen Convert FLV ke MP4"
echo -e $white" [$okegreen"x"$white]$okegreen Kembali Ke Menu"
echo -e $okegreen" ┌─["$red"IqbalFAF$okegreen]──[$red~$okegreen]─["$yellow"converter-video$okegreen]:"	
    echo -ne $okegreen" └─────► " ;tput sgr0    
read videcon

	if test $videcon == '1'
	then 
	echo "Converter MP4 Ke MP3"
	sleep 1
	read -p "Dimana File Nya :" filevidcon
	for i in $filevidcon; do
	
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i" -b:a 192K -vn "${i%.*}.mp3" > /dev/null 2>&1
    echo  -ne "\ec"
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"

	done
	sleep 1
	echo ""
	read -p "Tekan ENTER Untuk Kembali Ke Converter MP3 "
	sleep 1 
	clear
	convertervideo



	elif test $videcon == '2'
	then
	echo "Converter MKV Ke MP4"
	sleep 1
	read -p "Dimana File Nya :" filevidcon
	for i in $filevidcon; do
	
	start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i" -codec copy "${i%.*}.mp4" > /dev/null 2>&1
    echo  -ne "\ec"
    echo "Convert selesai lokasi file nya ${i%.*}.mp4"
	done
	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Converter Video "
	sleep 1 
	clear
	convertervideo



	elif test $videcon == '3'
	then
	echo "Converter Video AVI Ke MP4"
	read -p "Dimana File Nya :" filevidcon
	for i in $filevidcon; do
	
	start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i" -c:a aac -b:a 128k -c:v libx264 -crf 23 "${i%.*}.mp4" > /dev/null 2>&1
    echo  -ne "\ec"
    echo "Convert selesai lokasi file nya ${i%.*}.mp4"
	done
	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Converter Video "
	sleep 1 
	clear
	convertervideo


	elif test $videcon == '4'
	then
	echo "Converter WEBM Ke MP4"
	read -p "Dimana File Nya :" filevidcon
	for i in $filevidcon; do
	
	start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i" -c:v copy "${i%.*}.mp4"  > /dev/null 2>&1
    echo  -ne "\ec"
    echo "Convert selesai lokasi file nya ${i%.*}.mp4"
	done
	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Converter Video "
	sleep 1 
	clear
	convertervideo


	elif test $videcon == '5'
	then
	echo "Converter FLV Ke MP4"
	read -p "Dimana File Nya :" filevidcon
	for i in $filevidcon; do
	
	start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i" -vcodec copy "${i%.*}.mp4" > /dev/null 2>&1
    echo  -ne "\ec"
    echo "Convert selesai lokasi file nya ${i%.*}.mp4"
	done
	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Converter Video "
	sleep 1 
	clear
	convertervideo



	elif test $videcon == 'x'
	then
	clear
	menu

	else
	echo " Lu Ngetik Apaan  Coba ?"
	echo " Ulangi Lagi "
	sleep 1
	clear
	convertervideo
	fi
	}

	function convertermp3 (){

echo -e $BlueF"   __  ______________    __  ______  ____";
echo "  /  |/  / ___/_  __/___/  |/  / _ \|_  /";
echo " / /|_/ / /__  / / /___/ /|_/ / ___//_ < ";
echo "/_/  /_/\___/ /_/     /_/  /_/_/  /____/ ";
echo "                                         ";
	echo""
	echo -e $lightgreen"============================================="
	echo -e $white" [$red"01"$white]$cyan Convert MP4 Ke MP3"
	echo -e $white" [$red"02"$white]$cyan Convert MKV ke MP3"
	echo -e $white" [$red"03"$white]$cyan Convert AVI Ke MP3"
	echo -e $white" [$red"04"$white]$cyan Convert WEBM ke MP3"
	echo -e $white" [$red"05"$white]$cyan Convert FLV ke MP3"
	echo -e $white" [$red"06"$white]$cyan Convert M4A ke MP3"
	echo -e $white" [$red"x"$white]$cyan Kembali Ke Menu"
	echo -e $okegreen" ┌─["$red"IqbalFAF$okegreen]──[$red~$okegreen]─["$yellow"converter-mp3$okegreen]:"	
    echo -ne $okegreen" └─────► " ;tput sgr0  
    read convermp3

	if test $convermp3 == '1'
    then 
    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i" -b:a 192K "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done

	sleep 1 
	echo ""
	read -p "Tekan ENTER Untuk Kembali Ke Converter MP3 "
	sleep 1
	clear
	convertermp3
	clear
    elif test $convermp3 == '2'
    then  

    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i" -vn -c:a libmp3lame -y "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done

	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Converter MP3 "
	sleep 1
	clear
	convertermp3
	clear

    elif test $convermp3 == '3'
    then  

    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i" -vn -ab 128k -ar 44100 -y "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done

	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Converter MP3 "
	sleep 1
	clear
	convertermp3
	clear

	elif  test $convermp3 == '4'
    then  
    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i"  -vn -ab 128k -ar 44100 -y "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done
	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Converter MP3 "
	sleep 1
	clear
	convertermp3

    elif test $convermp3 == '5'
    then  

    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i" -vn -ab 128k -ar 44100 -y "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done

	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Converter MP3 "
	sleep 1
	clear
	convertermp3

	elif  test $convermp3 == '6'
    then  
    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i"  -vn -ab 128k -ar 44100 -y "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done
	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Converter MP3 "
	sleep 1
	clear
	convertermp3

	elif test $convermp3 == 'x'
    then 
    clear
    menu 

	else 
	echo " Lu Ngetik Apaan  Coba ?"
	echo " Ulangi Lagi "
	sleep 1
	clear
	convertermp3
	fi
	}

	function batchmp3(){

echo -e $cyan"    __  _______________    ____  ___  ______________  __";
echo "   /  |/  / ____/_  __/   / __ )/   |/_  __/ ____/ / / /";
echo "  / /|_/ / /     / /_____/ __  / /| | / / / /   / /_/ / ";
echo " / /  / / /___  / /_____/ /_/ / ___ |/ / / /___/ __  /  ";
echo "/_/  /_/\____/ /_/     /_____/_/  |_/_/  \____/_/ /_/   ";
echo "                                                        ";
	echo""
	echo -e $lightgreen"============================================="
	echo -e $white" [$okegreen"01"$white]$okegreen WAV To Mp3"
	echo -e $white" [$okegreen"02"$white]$okegreen wav to Mp3"
	echo -e $white" [$okegreen"03"$white]$okegreen ogg to Mp3"
	echo -e $white" [$okegreen"04"$white]$okegreen flac to Mp3"
	echo -e $white" [$okegreen"x"$white]$okegreen Kembali Ke Menu"
	echo -e $okegreen" ┌─["$red"IqbalFAF$okegreen]──[$red~$okegreen]─["$yellow"Batch-MP3$okegreen]:"	
    echo -ne $okegreen" └─────► " ;tput sgr0    
    read batmp3

	if test $batmp3 == '1'
	then
	clear 

    read -p "Di Mana File Nya : " mp3dir
    for i in $mp3dir; do
    
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i/*.WAV" -vn -ab 128k -ar 44100 -y "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done

	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Batch MP3 "
	sleep 1
	clear
	batchmp3


	elif test $batmp3 == '2'
	then
	clear

	read -p "Di Mana File Nya : " mp3dir
    for i in $mp3dir; do
    
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i/*.wav" -vn -ab 128k -ar 44100 -y "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done

	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Batch MP3 "
	sleep 1
	clear
	batchmp3

	elif test $batmp3 == '3'
	then
	clear

	read -p "Di Mana File Nya : " mp3dir
    for i in $mp3dir; do
    
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i/*.ogg" -vn -ab 128k -ar 44100 -y "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done

	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Batch MP3 "
	sleep 1
	clear
	batchmp3

	elif test $batmp3 == '4'
	then
	clear

	read -p "Di Mana File Nya : " mp3dir
    for i in $mp3dir; do
    
    start_spinner 'Proses Convert Sedang Berjalan....'
    ffmpeg -i "$i/*.flac" -vn -ab 128k -ar 44100 -y "${i%.*}.mp3" > /dev/null 2>&1
    stop_spinner $?
    echo "Convert selesai lokasi file nya ${i%.*}.mp3"
	done

	sleep 1
	read -p "Tekan ENTER Untuk Kembali Ke Batch MP3 "
	sleep 1
	clear
	batchmp3

	elif test $batmp3 == 'x'
	then
	clear
	menu

	else 
	echo " Lu Ngetik Apaan  Coba ?"
	echo " Ulangi Lagi "
	sleep 1
	clear
	batchmp3
	fi

	}


####### KORE MENU #########


function menu (){
echo -e okegreen"                                   ";
echo " _|      _|    _|_|_|  _|_|_|_|_|  ";
echo " _|_|  _|_|  _|            _|      ";
echo " _|  _|  _|  _|            _|      ";
echo " _|      _|  _|            _|      ";
echo " _|      _|    _|_|_|      _|      ";
echo "                                   ";
echo "     Media Converter Termux        ";
echo "          IqbalFAF "
echo -e $white" Script   : $red"IqbalFAF""
echo -e $white" Version  : $red"$versi""
echo""
echo -e $lightgreen"============================================="
echo -e $white" [$red"01"$white]$cyan Converter Video"
echo -e $white" [$red"02"$white]$cyan Converter Mp3"
echo -e $white" [$red"03"$white]$cyan Batch Convert Mp3" 
echo -e $white" [$red"x"$white]$cyan Keluar"
echo -e $okegreen" ┌─["$red"IqbalFAF$okegreen]──[$red~$okegreen]─["$yellow"menu$okegreen]:"	
echo -ne $okegreen" └─────► " ;tput sgr0
read kimochi
echo ""
if test $kimochi == '1'
	then
	clear
	convertervideo
elif test $kimochi == '2'
	then 
	clear
	convertermp3
elif test $kimochi == '3'
	then
	clear
	batchmp3
elif test $kimochi == 'x'
	then
	sleep 1 
	echo -e $okegreen""
	read -p "Mau keluar ?" 
	exit
else
	echo "Nomor Nya Nggak Ada Di Menu"
	sleep 3
	menu
fi

}

####### KORE MENU #########

sleep 1
clear
echo -e okegreen"                                   ";
echo " _|      _|    _|_|_|  _|_|_|_|_|  ";
echo " _|_|  _|_|  _|            _|      ";
echo " _|  _|  _|  _|            _|      ";
echo " _|      _|  _|            _|      ";
echo " _|      _|    _|_|_|      _|      ";
echo "                                   ";
echo "     Media Converter Termux        ";
echo "          IqbalFAF "
echo -e $white" Script   : $red"IqbalFAF""
echo -e $white" Version  : $red"$versi""
echo""
echo -e $lightgreen"============================================="
echo -e $white" [$red"01"$white]$cyan Converter Video"
echo -e $white" [$red"02"$white]$cyan Converter Mp3"
echo -e $white" [$red"03"$white]$cyan Batch Convert Mp3" 
echo -e $white" [$red"03"$white]$cyan UPDATE Script" 
echo -e $white" [$red"x"$white]$cyan Keluar"
echo -e $okegreen" ┌─["$red"IqbalFAF$okegreen]──[$red~$okegreen]─["$yellow"menu$okegreen]:"	
echo -ne $okegreen" └─────► " ;tput sgr0
read kimochi
echo ""
if test $kimochi == '1'
	then
	clear
	converte rvideo
elif test $kimochi == '2'
	then 
	clear
	convertermp3
elif test $kimochi == '3'
	then
	clear
	batchmp3
elif test $kimochi == 'x'
	then
	sleep 1 
	echo -e $okegreen""
	read -p "Mau keluar ?" 
	exit
else
	echo "Nomor Nya Nggak Ada Di Menu"
	sleep 3
	menu
fi
