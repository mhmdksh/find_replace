#!/bin/bash
## Version		1.0
## Written By	Mohamad Shehab
#### Specify the main directory of the Radar Files ####
scanned_dir="/root/for_scanning"

#### Specify the destination directory for the Radar Files ####
dest="/root/new_dir"

#### Folder to search for insinde the scanned directory
scan="whatever_folder"

#### Search for the files and in the scanned folder and copy the new found .xml and .jpg files into the destinations directory ####
for src in $(find $dir -type d -name "$(scan)")
do
        rsync --ignore-existing --include="*/" --include='*.xml' --include='*.jpg' --exclude="*" -avz $src $dest
done
