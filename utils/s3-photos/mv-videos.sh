#!/usr/bin/env bash

PICTURES_PATH="/home/santiago/Backup/Pictures"

cd $PICTURES_PATH

vids=$( find . -type f -name "*.mp4" )

for vid in ${vids[@]}; do
    echo "$vid"
    mv $vid ./vids
done

