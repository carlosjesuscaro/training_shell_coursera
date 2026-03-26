#!/usr/bin/env bash

# Purpose: A user to enter a URL and a key word so that the script counts how many times the key word is in the website.

read -rp "Please enter a website: " website
website="https://www.$website"
response=$(curl -sL -o /dev/null -w "%{http_code}" "$website")

if (( response == 200 )); then
  echo -e "The website $website exist and is working properly.\n"
  read -rp "Enter the word that you want to search in the website:  " key_word
  count=$(curl -s "$website" | grep -ci "$key_word")
  echo -e "\nYour search word \"$key_word\" was found $count times in the website $website.\n"
else
  echo "The website $website does not exist or it is not working at the moment."
fi
