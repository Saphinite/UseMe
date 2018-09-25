#!/bin/bash

export MYNAME="Chris"
mytitle="Dr"
today=$(date +%A)
hostname=$(hostname)
#echo $mytitle $MYNAME

echo "Welcome to planet $hostname $mytitle $MYNAME"
echo "Today is $today"
