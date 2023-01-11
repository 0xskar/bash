#!/bin/sh
#
#randomPass.sh
#
#A script that generates a random password and displays it to the user.
# 
#0xskar 01/08/23




#generate random chars
$pass = cat /dev/random | tr -dc '[:alpha:]' | fold -w ${1:-20} | head -n 1



