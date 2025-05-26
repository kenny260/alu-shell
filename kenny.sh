#!/bin/sh

#Prompt user to enter a directory name.
read -p "Enter directory name:" dir

#file name variables

file_a="submission1.txt"
file_b="submission2.txt"

#Check if user input matches any present directory and create files in it.
if [ -d "$dir" ]; then 
	echo "Directory exists already. Let's create the two files"
	touch $dir/{$file_a,$file_b}

#Create a new directory if the user input doesn't match any present dir.
elif [ ! -d "$dir" ]; then
	echo "Directory doesn't exist.Let's create it with two files in it"
	mkdir $dir
	touch $dir/{$file_a,$file_b}

#Check if a file with that name exists, print an error message if true.
elif [ -e "$dir" ]; then
	echo "Error: a file with that name exists already"
fi

