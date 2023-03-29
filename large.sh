#!/bin/bash

echo "Enter 1st number:"
read first_num
echo "Enter 2nd number:"
read second_num
echo "Enter 3rd number:"
read third_num
if test $first_num -gt $second_num && test $first_num -gt $third_num
then
	echo $first_num is the greatest number.
elif test $second_num -gt $third_num
then
	echo $second_num is the greaatest number.
else
	echo $third_num is the greatest number.
fi

