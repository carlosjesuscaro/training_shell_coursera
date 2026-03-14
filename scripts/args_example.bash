#!/usr/bin/env bash

# Purpose: Demonstrate positional parameters ($0, $1, $2, $#, $@)

echo "--- Positional Parameters Demo ---"

# $0 is the script's name
echo "Script name (\$0): $0"

# $# is the number of arguments passed
echo "Total arguments (\$#): $#"

# $1, $2, etc. are the individual arguments
echo "First argument (\$1): $1"
echo "Second argument (\$2): $2"

# $@ represents all arguments as a list
echo "All arguments (\$@): $@"

echo "----------------------------------"

# Practical example: greeting the user
if [[ -z "$1" ]]; then
    echo "Usage: $0 <your_name> [your_age]"
else
    echo "Hello, $1!"
    if [[ -n "$2" ]]; then
        echo "You are $2 years old."
    fi
fi
