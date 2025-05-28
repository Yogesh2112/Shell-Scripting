!/bin/bash

read -p "Name of file: " filename

if [ ! -e $filename ];
then echo "$filename does not exist."

if [ -f $filename ];
then echo "$filename found and it is a regular file."
fi

elif [ -d $filename ];
then echo "$filename found and it is a directory."

elif [ -L $filename ];
then echo "$filename found and it is a symbolic link."

else echo "$filename is of unknown type."

fi
