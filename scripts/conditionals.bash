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
  echo ""
  echo "The test file exist!"
else
  echo ""
  echo "It does not exist"
fi

# Case conditioning
echo ""
echo "Enter one of the following options:"
echo ""
echo "1 - Current date and time"
echo "2 - Number of directories in the current folder"
echo "3 - Run hello script"

read response

case $response in
1) date;;
2) tmp=$(ls -p | grep / | wc -l) && echo "There are $tmp folders";;
3) ./hello.bash;;
*) echo "Wrong choice"
esac

