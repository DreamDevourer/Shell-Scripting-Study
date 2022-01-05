#!/usr/bin/env bash

echo "Woohoo! First Bash Script in my GitHub!"\n

# VARS

ASK_QUESTION=1

# USER INPUT
if [ ASK_QUESTION==1 ]
then

read -p "Enter your name: " NAME
read -p "Enter your age: " AGE
echo "Welcome $NAME!"
echo "Your age is: $AGE"

# IF
if [ $AGE -gt 20 ]
then
    echo "You are becoming old lol!"
else
    echo "You are young!"
fi

else
    echo "You are not allowed to be here."
fi
