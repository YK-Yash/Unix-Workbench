#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guess the number of files in the current directory.."

function guessinggame(){

  local totalFiles=$(ls|wc -l)
  local userInput
  read userInput

  while [[ $userInput -ne $totalFiles ]]
  do
    if [[ $userInput -lt $totalFiles ]]
    then
      echo "Your guess is lower than the number of files. Try again!"
    else
      echo "Your guess is higher than the number of files. Try again!"
    fi
    read userInput
  done
  echo "$userInput.. That's right! Thanks for playing."
}

guessinggame
