#!/bin/sh
#
# userCreate.sh
#
# A simple script automating creation of new user account and assigning them to groups.
# 
# 0xskar 01/08/23

read -p "Enter username: " username
read -p "Enter group: " group

# check for group
if getent group $group > /dev/null 2>&1; then 
    useradd -m $username
    usermod -aG $group $username
    passwd $username
    echo "User $username created and added to $group"
else
    echo "group $group doesn't exist"
fi
