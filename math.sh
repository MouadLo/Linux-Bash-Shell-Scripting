#!/bin/bash
NUMBER=5

#do the NUMBER + 5

#---let---
let RESULT=NUMBER+5
echo Result from let: $RESULT

#---(( ))---
RESULT=$(( NUMBER + 5 ))
echo "Result from (( )): $RESULT"

#---[ ]---
RESULT=$[ NUMBER + 5 ]
echo Result from [ ]: $RESULT

#---expr---
RESULT=$(expr $NUMBER + 5)
echo Result from expr: $RESULT

#---bc--- NUMBER * 1.9
RESULT=`echo "$NUMBER * 1.9" | bc`
echo Result from bc: $RESULT

echo "scale = 3; (5 + 50 * 3 / 20) + 19 * 2 / 7 + 0.001" | bc

echo "scale = 3; (-105 + 50 * 3 / 20) + ((19^2) / 7)" | bc

echo "scale = 3; ((-105 + 50 *3) / 20) + ((19^2) / 7)" | bc