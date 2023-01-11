#!/bin/bash
# checks for files and directories

# check if an agrument is supplied or exit
if [ $# -ne 1 ]; then
        echo "Error: I need an argument"
        exit 1
fi

file=$1

# check file type
if [ -f $file ]; then
        echo "The file is a regular file."
        file $file
elif [ -d $file ]; then
        echo "The file is a directory. It contains:"
        if [ $file = "/" ]; then
                for i in /*; do
                        echo $i
                done
        else 
                for i in $1/*; do
                        echo $i
                done
        fi
elif [ -L $file ]; then
        echo "The file is a soft link."
else 
        echo "File doesnt exist."
fi
