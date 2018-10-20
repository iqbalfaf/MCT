#!/usr/bin/env bash
echo " Updating Script MCT V1.2... " > /dev/null 2>&1
sleep 1
echo ""
echo " Update Repo... " > /dev/null 2>&1
apt update
sleep 1
echo " Update Selesai " > /dev/null 2>&1
sleep 1
echo " Installing Curl " > /dev/null 2>&1
apt install curl
sleep 1
echo " Curl Installed " > /dev/null 2>&1
echo ""
sleep 1
echo " Downloading Script... " > /dev/null 2>&1
curl https://raw.githubusercontent.com/iqbalfaf/MCT/master/mct.sh >> mct  > /dev/null 2>&1
sleep 1
echo " Script Downloaded " > /dev/null 2>&1
sleep 1
echo ""
echo " Setting Up Script... " > /dev/null 2>&1
rm $PREFIX/bin/mct
mv mct $PREFIX/bin
chmod +x $PREFIX/bin/mct
sleep 1
echo ""
echo " Script Setting Up" > /dev/null 2>&1
sleep 1
echo " Updating Script Berhasil " > /dev/null 2>&1
echo " Terimakasih " > /dev/null 2>&1
echo " IqbalFAF " > /dev/null 2>&1
