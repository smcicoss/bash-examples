#!/bin/bash

# This is a program that keeps your address book up to date.

friends="/var/tmp/friends"

echo "Hello, "$USER".  This script will register you in friends database."

echo -n "Enter your name and press [ENTER]: "
read name
echo -n "Enter your gender (male | female) and press [ENTER]: "
#read -n 1 gender
read gender

if [ ! -f $friends ]; then
    touch $friends 
fi

grep -i "$name" "$friends"       
   
if  [ $? == 0 ]; then
  echo "You are already registered, quitting."
  exit 1
elif [ "$gender" == "male" ]; then
  echo "$name $gender" >> "$friends"           
  echo "You are added to friends list."
  exit 1
else
  echo -n "How old are you? "
  read age
  if [ $age -lt 25 ]; then
    echo -n "Which colour of hair do you have? "
    read colour
    echo "$name $gender $age $colour" >> "$friends" 
    echo "You are added to friends list.  Thank you so much!"
  else
    echo "$name"      
    echo "$name $gender $age" >> "$friends"       
    echo "You are added to friends list."
    exit 1
  fi
fi

