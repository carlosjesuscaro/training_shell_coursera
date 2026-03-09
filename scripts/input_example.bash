#!/usr/bin/env bash
# Purpose:  Example of a script that requires the input of the user
# Date: March 8, 2026

echo "What is your company name?"
echo ""
read input_name
echo "YOur company is $input_name"
var_hostname=`hostname`
echo "Script completed in machine: $var_hostname on `date`"