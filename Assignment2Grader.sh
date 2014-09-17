#!/bin/bash
FILE=$1
while read line; do
     echo "This is a line : $line"
done < $FILE