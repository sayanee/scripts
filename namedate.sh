#!/bin/bash

# find all files in the current folder and rename them in the format:
# YYYY_MM_DD_HH_MM_SS_bto.{original_extension}
# TODO: configurable event as shell input

for filename in *; do
  createddate=`stat -l -t '%F-%T' "$filename" | cut -f6 -d$' ' | tr '-' '_' | tr ':' '_'`
  event='_bto.'
  extension="${filename##*.}"
  newfilename=$createddate$event$extension

  echo 'old: '$filename'    new: '$newfilename
  mv "$filename" $newfilename
done
