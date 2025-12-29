#!/bin/bash

img=$1
name=$2
p=$(dirname $(realpath $0))

cd $p

read -p "(x y): " xy

echo "32 $xy cursors.ref/$1" | sudo tee $p/${2}.txt

echo "$p/${2}.txt"

sudo xcursorgen $p/${2}.txt $p/cursors/$2
rm -f $p/${2}.txt
