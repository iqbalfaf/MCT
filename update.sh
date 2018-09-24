#!/usr/bin/env bash
log=$HOME/mct-update.log
echo " Updating Script... " >> $log 2>&1
sleep 1
echo " Update Repo... " >> $log 2>$1
apt update
sleep 1
echo " Update Selesai " >> $log 2>$1
sleep 1
echo " Installing Curl " >> $log 2>$1
apt install curl
sleep 1
echo " Curl Installed " >> $log 2>$1
sleep 1
echo " Downloading Script... " >> $log 2>&1
wget -O $PREFIX/bin/mct https://raw.githubusercontent.com/iqbalfaf/MCT/master/mct.sh
sleep 1
echo " Script Downloaded " $log 2>&1
sleep 1
echo " Setting Up Script... " $log 2>&1
chmod +x $PREFIX/bin/mct
sleep 1
echo " Script Setting Up" $log 2>&1
sleep 1
echo " Updating Script Berhasil " $log 2>&1
echo " Terimakasih " $log 2>&1
echo " IqbalFAF " $log 2>&1
