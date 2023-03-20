///Write a shell script program that takes the name of a file or directory as an argument.
 

///It then reports if the file is a directory, regular file or symbolic link.
///It also reports if the user has read, write and execute permission on the file or directory.
///If the file/directory (the argument) does not exist, it should issue a message and exit gracefully.

#!/bin/bash

# Check if a file/directory name is provided as argument
if [ $# == 0 ]; then
  echo "Please provide a file/directory name as argument."
  exit 1
fi

# Check if the file/directory exists
if [ ! -e "$1" ]; then
  echo "File/directory does not exist."
  exit 1
fi

# Check if the file/directory is a regular file, directory, or symbolic link
if [ -d "$1" ]; then
  echo "$1 is a directory."
elif [ -f "$1" ]; then
  echo "$1 is a regular file."
elif [ -L "$1" ]; then
  echo "$1 is a symbolic link."
fi

# Check if the user has read, write, and execute permissions on the file/directory
if [ -r "$1" ]; then
  echo "You have read permission on $1."
fi

if [ -w "$1" ]; then
  echo "You have write permission on $1."
fi

if [ -x "$1" ]; then
  echo "You have execute permission on $1."
fi

exit 0

//run it as
./shellscript filename
