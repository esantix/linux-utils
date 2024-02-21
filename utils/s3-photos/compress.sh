#!/usr/bin/env bash

PICTURES_PATH="/home/santiago/Backup/Pictures"

cd $PICTURES_PATH

albums=$( ls  )

for album in ${albums[@]}; do
    echo "$album"
   zip -r "$album.zip" "$album"
done

ls $PICTURES_PATH/*.zip
