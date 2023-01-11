#!/bin/sh

echo "Whats my favourite food?"
echo "1) Lasagna"
echo "2) Reubens"
echo "3) Chicken Cordon Bleu"

read choice

if [ $choice = '1' ]; then
        echo "Heck yeah lasagna is the best!!!"
elif [ $choice = '2' ]; then
        echo "I mean reubens are good but, I like pasta more..."
elif [ $choice = '3' ]; then
        echo "Chicken cordon bleu is the bomb but its not my fav!"
else 
        echo "That wasn't an option. Now you've done it."
fi
