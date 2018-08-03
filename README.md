# cut-qualys-headers.sh
A simple bash script to cut headers from Qualys CSV reports

## Rationale

I work with Qualys vulnerability scan CSV reports and often need to upload them to other platforms and incorporate them in reports. The header information Qualys adds is usually not relevant in these situations. I wrote this script to automate the process of removing the additional information.

## Use

This is a very basic script. Simply run it out of the directory containing the Qualys vulnerability scan CSV reports from which you want to remove headers. Be sure to run chmod +x first. The script will create a directory called noheaders if it does not already exist and write new files without headers to that direcotry.

## Notes

The script will remove lines from all files with the .csv extension, so make sure the directory only includes Qualys CSVs. It will not alter the original files, but this could cause confusion.
