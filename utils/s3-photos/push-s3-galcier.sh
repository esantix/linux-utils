#!/usr/bin/env bash

PICTURES_PATH="/home/santiago/Backup/Pictures"

cd $PICTURES_PATH
albums=$( ls *zip )

for album in ${albums[@]}; do
    file_path="$PICTURES_PATH/$album"
    echo "Zipped album $PICTURES_PATH/$album"
    aws s3 cp $file_path s3://esantix-backup-photos/ --storage-class DEEP_ARCHIVE

done