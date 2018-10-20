#!/usr/bin/env bash
clear
echo " Updating Script MCT V1.2... " 
echo ""
sleep 1
echo " Update Repo... "
apt update > /dev/null 2>&1
sleep 1
echo " Update Selesai "
sleep 1
echo " Installing Curl " 
apt install curl > /dev/null 2>&1
sleep 1
echo " Curl Installed " 
sleep 1
echo " Downloading Script... " 
curl https://raw.githubusercontent.com/iqbalfaf/MCT/master/mct.sh >> mct  > /dev/null 2>&1
sleep 1
echo " Script Downloaded " 
sleep 1
echo " Setting Up Script... " 
rm $PREFIX/bin/mct
mv mct $PREFIX/bin
chmod +x $PREFIX/bin/mct
sleep 1
echo ""
echo " Script Setting Up" 
sleep 1
echo " Updating Script Berhasil " 
echo " Terimakasih "
echo " IqbalFAF " 
