#!/bin/bash

# Count all the lines of code of the C files in the directory given as command line argument,
# excluding lines that are empty or contain only blank spaces.

S=0
for F in $1/*.c
do
  N=`grep "[^ \t]" $F | wc -l`
  S=`expr $S + $N`
done

echo $S
