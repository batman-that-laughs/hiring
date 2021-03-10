#!/bin/bash

#set path to delete
path=/home/ubuntu/audios

#set number of days
days=2

#set the name for the log file
basename="deleted-files-"
dateappend=`date +"%d-%m-%Y"`
logfilename=$basename$dateappend".log"

#find; log; delete; repeat 
for file in $(find $path -maxdepth 1 -type f -mmin +$((60*24*$days)) -print);       #find
    do
        echo $file $(ls -l --time-style='full-iso' $file | awk '{print $6}') $(date -Iseconds) >> $logfilename       #log
        rm -f $file     #delete
    done