#!/bin/bash

# USAGE: oshname {directory_name}

# INFO:
# create a compressed zip folder for OSH Park from KiCad Gerber output files
# OSH Park guidelines for filenames: https://oshpark.com/guidelines/
# find all *.gbr and *.drl files in the directory_name
# create a compressed zip file containing all the renamed files

key="$1"

echo "KiCad gerber and drill files:"

mkdir $1/OUTPUT
cd $1

rename_file() {
  echo $file to *.$1
  cp $file OUTPUT/$file.$1
}

for file in *.{gbr,drl}; do
  if [[ $file == *"-B.Cu.gbr"* ]]; then
    rename_file gbl
  elif [[ $file == *"-B.Mask.gbr"* ]]; then
    rename_file gbs
  elif [[ $file == *"-B.SilkS.gbr"* ]]; then
    rename_file gbo
  elif [[ $file == *"-Edge.Cuts.gbr"* ]]; then
    rename_file gko
  elif [[ $file == *"-F.Cu.gbr"* ]]; then
    rename_file gtl
  elif [[ $file == *"-F.Mask.gbr"* ]]; then
    rename_file gts
  elif [[ $file == *"-F.SilkS.gbr"* ]]; then
    rename_file gto
  elif [[ $file == *".drl"* ]]; then
    rename_file xln
  fi
done

mv OUTPUT GERBERS
zip -r GERBERS GERBERS
rm -rf GERBERS

echo "GERBERS.zip is created in /"$1
