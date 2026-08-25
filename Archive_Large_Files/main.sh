#!/bin/bash
# Date of creation - Tue Aug 25 12:35:41 PM EDT 2026

if [[ $# -lt 1 ]]
then
	echo "Directory path missing. Provide the path !!!"
	echo "Usage : ${0} /path to directory"
	exit 1
fi

TARGET_PATH="$1"
RUN=0
DEPTH=1

#check  if the directory present or not

if [[ ! -d "$TARGET_PATH" ]]
then
	echo "Directory not found : $TARGET_PATH"
	exit 1
fi

#Create archive folder if not present
if [[ ! -d "$TARGET_PATH/archive" ]]
then
	mkdir "$TARGET_PATH/archive"
fi

#find thr list of files larger than 10KB

for i in `find "$TARGET_PATH" -maxdepth "$DEPTH" -type f -size +50M`
do
	if [[ $RUN -eq 0 ]]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $TARGET_PATH/archive"
		gzip "$i" || exit 1
		mv "$i.gz" "$TARGET_PATH/archive" || exit 1
	fi	
done
