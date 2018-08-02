#!/bin/bash
# A script to strip headers from Qualys scan reports
# Run the script from a directory containing the reports
# Creates a 'noheaders' directory in the current directory for the new files
# v0.1 Wed Aug  1 19:01:33 EDT 2018
# Written in GNU bash version 3.2.57(1)-release (x86_64-apple-darwin17)
# Author: Andrew Kulak

i=1
mkdir noheaders
start=`date +%s`
for filename in *.csv; do
  basefilename=${filename%.csv}
  echo $i $filename
  sed '1,7d' "$filename" > "./noheaders/$basefilename-nh.csv"
  let i=i+1
done
end=`date +%s`
runtime=$((end-start))
let i=i-1
if [[ $runtime -eq 0 ]]; then
  echo "Finished: Removed headers from $i files in less than 1 second"
elif [[ $runtime -eq 1 ]]; then
  echo "Finished: Removed headers from $i files in 1 second"
else
  echo "Finished: Removed headers from $i files in $runtime seconds"
fi
