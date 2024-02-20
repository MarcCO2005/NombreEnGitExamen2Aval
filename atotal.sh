#!/bin/bash

echo "Calcular consumo de la ciudad:"
read ciu
con=0

while read line
        do
                a=`echo $line | awk '{print $1}'`
                if [ $a = $ciu ]
                        then
                        aux=`echo $line | awk '{print $4}'`
                        con=$(( con + aux ))

                fi
                
                
done < consumos.txt

echo $con