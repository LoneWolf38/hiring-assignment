#!/bin/bash

NOW=$(date +"%d-%m-%y")
FILE="deleted-files-$NOW.log"
touch $FILE

find audios/ -type f -name "*.wav" -mtime 0 -exec sh -c  'echo $(basename $0) $(date --iso-8601=ns -d "$(stat --printf "%y" $0)")  $(date --iso-8601=ns)' {} >> $FILE \; -exec rm -f {} \;