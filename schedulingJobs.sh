#!/bin/bash
#

file=job_results.log

#echo "The script ran at the following time: $(date)" > $file

/usr/bin/echo "The script ran at the following time: $(/usr/bin/date)" > $file
