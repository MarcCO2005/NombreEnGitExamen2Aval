#!/bin/bash
con=0
aux=0
val="Valencia"
mad="Madrid"
bcl="Barcelona"
while read line
do 
        nomciu=`echo $line | awk '{print $1}'`
        consumo=`echo $line | awk '{print $4}'`
        if [ $val = $nomciu ] ; then
                aux=$((aux+consumo))
                con=$((con + 1))
        elif [ $mad = $nomciu ] ; then
                aux=$((aux+consumo))
                con=$((con + 1))
        elif [ $bcl = $nomciu ] ; then
                aux=$((aux+consumo))
                con=$((con + 1))
        fi

