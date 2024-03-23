#!/bin/bash -x


re=^[0-9]+$
sum=0
for i in `cat directoare2.txt`
do 
	if [ "`du $i | cut -f1`"=~^[0-9]+$ ]
		then
			sum=$(($sum+$((`du $i | cut -f1`)) ))
			echo "$sum"	
       		fi 
done
	echo "$sum" > numere.txt
