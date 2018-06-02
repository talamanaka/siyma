#!/bin/bash

ls | grep shodan- > r_file

while IFS= read line
do
echo "$line"
y=$(cat $line |wc -l)
if [ "$y" = "0" ]; then
rm $line
echo "empty"
else
cat $line   >> x0x0
echo "found !"
fi

done <r_file

rm r_file



