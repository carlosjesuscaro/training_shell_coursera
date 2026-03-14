#!/usr/bin/env bash

# Purpose: for and while examples

for x in {1..20}
  do
    echo "$x"
  done

# do while examples

read -rp "Enter a number between 1 and 10" count
echo ""
while ((count > 0))
  do
    echo "$count seconds ..."
    echo ""
    count=$((count-1))
    sleep 0.5
  done
  echo "Script completed!"