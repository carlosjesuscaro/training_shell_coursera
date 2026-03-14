#!/usr/bin/env bash

# Returning whether there are more files in the directory than the number entered by the user

echo "Enter a number:"
read -r num_files

#current_num_files=$(ls -p | grep -cv /)
current_num_files=$(find . -maxdepth 1 -type f | wc -l)
echo "Number of files in current directory: $current_num_files"

if ((current_num_files >= num_files)); then
  echo "There are more or equal number of file than $num_files"
else
  echo "There are NOT as many files as $num_files"
fi

echo "Script finished on $(date)"