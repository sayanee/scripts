#!/bin/bash

# USAGE: namedate {event_name}

# INFO:
# find all files in the current folder and rename them in the format
# YYYY_MM_DD_HH_MM_SS_{argument}.{original_extension}
# useful for renaming photos from a camera

# TODO:
# delete the old file

for filename in *; do
  createddate=`stat -l -t '%F-%T' "$filename" | cut -f6 -d$' ' | tr '-' '_' | tr ':' '_'`
  event='_'$1'.'
  extension="${filename##*.}"
  newfilename=$createddate$event$extension

  echo 'old: '$filename'    new: '$newfilename
  mv "$filename" $newfilename
done
