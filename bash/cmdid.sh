#!/bin/bash

command=$1

if [ $command = "" ]; then
  read -p "Please enter a command name :" command
  if [ $command = "" ]; then
    exit 0
  fi
fi
arg="dpkg -S  $command"
echo $arg
$arg
