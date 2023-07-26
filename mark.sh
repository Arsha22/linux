#!/bin/bash
echo "Enter First Marks:"
read mark1
echo "Enter Second Marks:"
read mark2
echo "Enter Third Marks:"
read mark3
sum=`expr $mark1 + $mark2 + $mark3`
average=`expr $sum / 3`
if [ $average -ge 90 ]
then
echo "Grade : S"
elif [ $average -ge 80 ]
then
echo "Grade : A"
elif [ $average -ge 60 ]
then
echo "Grade : B"
elif [ $average -ge 40 ]
then
echo "Grade : B"
else
echo "Grade : F"
fi
