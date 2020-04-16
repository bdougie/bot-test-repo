#!/bin/sh -l

OIFS="$IFS"
IFS=$'\n'
for IN in `find $1 -maxdepth 1 -iname "*.*" -o -iname "*.png"`
do
OUT=${IN/$1/$3}
DIR=$(dirname $OUT)
mkdir -p "$DIR"
if [ ! -f $OUT ]; then
echo "Converting $IN"
convert $IN -resize $2  $OUT
else
echo "Converted already."
fi

done
IFS="$OIFS"
