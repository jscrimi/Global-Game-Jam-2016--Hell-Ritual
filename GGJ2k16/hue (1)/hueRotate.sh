#!/bin/bash
#This will create 360 frames of hue rotation.

SOURCE=$1

#TODO make this check for lack of parameters.

COUNT=0
while [ $COUNT -lt 360 ]; do
   ANGLE=$(echo "$COUNT * (100/180) + 100" | bc -ql)
   convert $SOURCE -modulate 100,100,$ANGLE $COUNT.png
   let COUNT=COUNT+1
done
