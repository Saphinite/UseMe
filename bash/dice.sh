#!/bin/bash
#Chris Lembo
#Bash Assigment
#Oct 26/18

#default variables
sum=0
sides=6
count=2
while [ $count -gt 0 ]; do #loop
  case $1 in
    -c | --count ) shift #sets the count command
      if [[ $1 -lt 1 ]]; then #range checking
        echo "Must Enter a number between 1 and 9" > /dev/stderr
        exit 1
      elif [[ $1 -gt 9 ]]; then #range checking
        echo "Must Enter a number between 1 and 9" > /dev/stderr
        exit 1 #exits with an error
      fi
      count=$1
      ;;
  esac
  case $2 in
    -s | --sides ) shift #sets the sides command
    if [[ $2 -lt 4 ]]; then #range checking
      echo "Must Enter a number between 4 and 20" > /dev/stderr
      exit 1
    elif [[ $2 -gt 20 ]]; then #range checking
      echo "Must Enter a number between 4 and 20" > /dev/stderr
      exit 1 #exits with an error
    fi
      sides=$2
      ;;
  esac
  case $3 in
    -h | --help ) #sets the help command
      echo "Options : -c N or --count N sets the number of dice. -s N or --side N sets the sides of dice. Default is 2 Dice with 6 Sides"
      echo "Rules : -c must be between 1 and 9. -s must be between 4 and 20"
      exit 0 #exits with no error
      ;;
  esac
  shift
  #Rolls the dice!
    roll=$(( $RANDOM % $sides +1 ))
    sum=$(( $sum + $roll ))
    echo "Rolled $roll"
    count=$((count - 1))

done
#Outputs the totals
echo "You rolled a total of $sum"
