#!/bin/bash

# check for command line argument
if [ $# -ne 1 ]; then
    echo $0: usage: create project-name
    exit 1
fi

# create folder if required
if [[ ! -e $1 ]]; then
    mkdir $1 -p
fi

# create destination filename for cc file
dest="$1"

# copy make file
cp Makefile $1

# copy cc file
cp -r ./src/ $dest

sed -i "s/REPLACEME564/$1/g" $1/Makefile
