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
versi='1.0'

##### kore figlet #####
intro=$(figlet MCT)
convideo=$(figlet Converter Video)
conmp3=$(figlet Converter Mp3)



function convertervideo (){
	echo -e $cyan"$convideo"
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
	echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i" -b:a 192K -vn "${i%.*}.mp4"
done
sleep 1
echo "Convert Video $filevidcon Selesai"
sleep 1 
echo " Kembali Ke Converter Video "
sleep 2
clear
convertervideo



elif test $videcon == '2'
	then
	echo "Converter MKV Ke MP4"
	sleep 1
	read -p "Dimana File Nya :" filevidcon
	for i in $filevidcon; do
	echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i" -codec copy "${i%.*}.mp4"
done
sleep 1
echo "Convert Video $filevidcon Selesai"
sleep 2
echo " Kembali Ke Converter Video "
clear
convertervideo



elif test $videcon == '3'
	then
	echo "Converter Video AVI Ke MP4"
	read -p "Dimana File Nya :" filevidcon
	for i in $filevidcon; do
	echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i" -c:a aac -b:a 128k -c:v libx264 -crf 23 "${i%.*}.mp4"
done
sleep 1
echo "Convert Video $filevidcon Selesai"
sleep 1 
echo " Kembali Ke Converter Video "
sleep 2
clear
convertervideo


elif test $videcon == '4'
	then
	echo "Converter WEBM Ke MP4"
	read -p "Dimana File Nya :" filevidcon
	for i in $filevidcon; do
	echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i" -c:v copy "${i%.*}.mp4"
done
sleep 1
echo "Convert Video $filevidcon Selesai"
sleep 1 
echo " Kembali Ke Converter Video "
sleep 2
clear
convertervideo


elif test $videcon == '5'
	then
	echo "Converter FLV Ke MP4"
	read -p "Dimana File Nya :" filevidcon
	for i in $filevidcon; do
	echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i" -vcodec copy "${i%.*}.mp4"
done
sleep 1
echo "Convert Video $filevidcon Selesai"
sleep 1 
echo " Kembali Ke Converter Video "
sleep 2
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
	echo -e $BlueF"$conmp3"
		echo""
	echo -e $lightgreen"============================================="
echo -e $white" [$red"01"$white]$cyan Convert MP4 Ke MP3"
echo -e $white" [$red"02"$white]$cyan Convert MKV ke MP3"
echo -e $white" [$red"03"$white]$cyan Convert AVI Ke MP3"
echo -e $white" [$red"04"$white]$cyan Convert WEBM ke MP3"
echo -e $white" [$red"05"$white]$cyan Convert FLV ke MP3"
echo -e $white" [$red"x"$white]$cyan Kembali Ke Menu"
echo -e $okegreen" ┌─["$red"IqbalFAF$okegreen]──[$red~$okegreen]─["$yellow"converter-mp3$okegreen]:"	
    echo -ne $okegreen" └─────► " ;tput sgr0  
    read convermp3

	if test $convermp3 == '1'
    then 
    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i" -b:a 192K "${i%.*}.mp3"
	done

	sleep 1
	echo "Convert MP3 $conmp3 Selesai"
	sleep 1 
	echo " Kembali Ke Converter MP3 "
	sleep 2
	clear
	convertermp3

    elif test $convermp3 == '2'
    then  

    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i" -vn -c:a libmp3lame -y "${i%.*}.mp3"
	done

	sleep 1
	echo "Convert MP3 $conmp3 Selesai"
	sleep 1 
	echo " Kembali Ke Converter MP3 "
	sleep 2
	clear
	convertermp3


    elif test $convermp3 == '3'
    then  

    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i" -vn -ab 128k -ar 44100 -y "${i%.*}.mp3"
	done

	sleep 1
	echo "Convert MP3 $conmp3 Selesai"
	sleep 1 
	echo " Kembali Ke Converter MP3 "
	sleep 2
	clear
	convertermp3
	clear

elif  test $convermp3 == '4'
    then  
    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i"  -vn -ab 128k -ar 44100 -y "${i%.*}.mp3"
	done
	sleep 1
	echo "Convert MP3 $conmp3 Selesai"
	sleep 1 
	echo " Kembali Ke Converter MP3 "
	sleep 2
	clear
	convertermp3

    elif test $convermp3 == '5'
    then  

    read -p "Di Mana File Nya : " conmp3
    for i in $conmp3; do
    echo -e $okegreen"Lagi Di Proses";
    ffmpeg -i "$i" -vn -ab 128k -ar 44100 -y "${i%.*}.mp3"
	done

	sleep 1
	echo "Convert MP3 $conmp3 Selesai"
	sleep 1 
	echo " Kembali Ke Converter MP3 "
	sleep 2
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


####### KORE MENU #########


function menu (){
clear
echo -e $lightgreen"$intro"
echo -e $BlueF"       Media Converter Tools"
echo -e $white" Script   : $red"IqbalFAF""
echo -e $white" Version  : $red"$versi""
echo""
echo -e $lightgreen"============================================="
echo -e $white" [$red"01"$white]$cyan converter video"
echo -e $white" [$red"02"$white]$cyan converter mp3"
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
clear
sleep 1
echo -e $lightgreen"$intro"
echo -e $BlueF"       Media Converter Termux"
echo -e $white" Script   : $red"IqbalFAF""
echo -e $white" Version  : $red"$versi""
echo""
echo -e $lightgreen"============================================="
echo -e $white" [$red"01"$white]$cyan converter video"
echo -e $white" [$red"02"$white]$cyan converter mp3"
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
elif test $kimochi == 'x'
	then
	sleep 1 
	echo -e $okegreen""
	read -p "Mau keluar ?" 
	exit
else
	echo "Lu Ngetik Apaan Coba ?"
	sleep 1
	menu
fi
