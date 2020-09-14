#!/usr/bin/ksh
##########################################################################
#title           :clean-dir.sh
#description     :AC-3531
#This script will DELETE any files from specified path - $1,
#with matching pattern - $2 and older than specified time - $3.
#author          :KSHARMA
#date            :2020-09-10
##########################################################################

#Added this example of code to check versioning, this is version 1

if [ "$#" -lt 3 ] 
then
  exit 1
fi

if [ ! -d "$1" ] 
then
  exit 1
fi

#if [ ! "$4" = "" ]
#then
#    echo "TESTBODY" | mailx -s "PURGE Statistics" $4
#fi

#find $1 -name $2 -mtime $3 -print
find $1 -name $2 -mtime $3 -exec rm {} \; > /dev/null 2>&1

