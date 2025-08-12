#!/bin/bash
space='df -h .|tail-1|awk -F " " '{print $( NF-1 )}'|sed 's/%//g''
if [ $space -ge 90 ]
then
echo "disk storage reached 90% please take an action"|mail -s "disk
storage is full" -c "chaithra@gmail.com"
fi
