#!/usr/bin/env bash
# Purpose: Examples of conditionals
# Date: March 8, 2026

echo "Enter a number between 1 and 50"
read number

if ((number >= 1 && number <= 50)); then
  for ((x=number; x<=50; x++))
    do
      echo $x
    done
else
    echo "Incorrect number, bye!"
fi

# Checking if a file exist

if [ -e test.txt ]; then
  echo "The test file exist!"
else
  echo "It does not exist"
fi