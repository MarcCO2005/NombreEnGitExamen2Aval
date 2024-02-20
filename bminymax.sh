#!/bin/bash

max=`cat consumos.txt | awk '{print $4}'| sort -nr | head -n 1`
min=`cat consumos.txt | awk '{print $4}'| sort -n | head -n 1`
while read line
do 
        a=`echo $line | awk '{print $4} '`
        if [ $a -eq $max ]
        then 
                echo "Max"
                echo $line
        fi
        b=`echo $line | awk '{print $4}'`
        if [ $b -eq $min ]
        then
        echo "Min"
        echo $line
fi
done < consumos.txt

