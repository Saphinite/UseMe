#!/bin/bash

export MYNAME="Chris"
titles=("Lord" "Duke" "General" "Admiral" "Commander")
today=$(date +%A)
hostname=$(hostname)
#echo $mytitle $MYNAME

welcomemessage="
Welcome to planet $hostname ${titles[((RANDOM % ${#titles[@]}))]} $MYNAME
Today is $today
"
echo $welcomemessage | cowsay -f dragon
