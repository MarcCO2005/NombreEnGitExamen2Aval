!/bin/bash

echo "dime una ciudad"
read ciu
con=0
aux=0
while read line
do
        nomciu=`echo $line | awk '{print $1}'`
        consumo=`echo $line | awk '{print $4}'`
        if [ $ciu = $nomciu ] ; then
                aux=$((aux+consumo))
                con=$((con + 1))
        fi

done < consumos.txt
echo $((aux / con))