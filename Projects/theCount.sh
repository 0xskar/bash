#!/bin/sh
#
# theCount.sh
#
# A script that takes a file as input and counts the number of lines, 
# words, and characters in the file.
# 
# 0xskar 01/08/23

read -p "Enter File To Count: " count_file

lines=$(wc -l $count_file | awk '{print $1}')
words=$(wc -w $count_file | awk '{print $1}')
chars=$(wc -m $count_file | awk '{print $1}')

echo "$count_file has $lines lines."
echo "$count_file has $words words."
echo "$count_file has $chars characters."