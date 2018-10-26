#!/bin/bash

command=$1
#Help
case $1 in
  -h | --help ) #sets the help command
    echo "Enter a filename to recive the source"
    exit 0 #exits with no error
    ;;
esac
#Initial prompts
  if [[ $command = "" ]]; then
    read -p "Please enter a command name :" command
    if [ $command = "" ]; then
      exit 0
    fi
  fi
#looped prompts
while [[ $command != "" ]]; do
  arg="dpkg -S  $command" #variable for the command to be run
  $arg || echo "Not a file" #error checking
  read -p " Please enter another command name : " command #reprompt
  if [[ $command = "" ]]; then #exit conditions
    exit 0
  fi
done
