#!/bin/bash

counter=0
for i in `ls /home/guang/work/play/dataPool/Part2/*`;
do
   let "counter = counter + 1"
   if [[ $(($counter%300)) == 1 ]]; then
     echo "wait, just a moment, you just finished ",$counter
   fi     
   for j in `cat target.txt`;
   do
     case "$i" in *$j* )  echo $i; cp $i selected;
     esac
   done
done
