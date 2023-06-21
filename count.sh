#!/bin/bash
getfile()
{
echo "enter the filename"
read filename
if  [ !  -f  $filename  ];then  
          echo  "File Name  $filename does not exists."
          exit 1
      fi
}
clear
getfile
echo "converting Upper-case to Lower-case"
tr  '[A-Z]'  '[a-z]' <$filename
echo "the number of lines is:"
wc -l <$filename
echo "the number of words are:"
wc -w <$filename
echo "the number of characters are:"
wc -c <$filename
echo "the content in descending order:"
sort -r <$filename
