#!/bin/bash

num=$(echo "$RANDOM%10 | bc)
num = $(echo "$num + 1" | bc)

num2=$(echo "RANDOM%10 | bc)
num2=$(echo "$num2+1" | bc)

if ["$num" -eq "$num2"]; then
echo "MATCH FOUND."
else
echo "MATCH NOT FOUND."
fi


if ["$#" -eq 0]; then
echo "Error: No arguments supplied"
exit 1
elif ["$" -gt 1]; then
echo "Error: No more than one argument can be selected."
fi

input = "$1"

num = $(echo "$RANDOM%10 | bc)
num = $(echo "$num+1 | bc)

if ["$num" -eq "$1"]; then
echo "Generate same number."
else 
echo "Generate unlike number: $num"
fi

if [$#" -eq 0]; then
echo "Error: No arguments applied."
exit 1 
fi

if [-f "./$filename"]; then
echo "$filename present in current directory."
else 
echo "$filename not found in current directory."
fi

echo -n "Do you like this class? (y/n)"
read input

input=$(echo "$input" | tr '[:upper:]''[:lower:]')

case $input in
"yes")
echo "YES!"
;;
"y")
echo "YES!"
;;
"no")
echo "NO!"
;;
"n")
echo "NO!"
;;
*)
echo "NULL"
;;
esac

echo -n "Enter first word:"
read word1

echo -n "Enter Second word:"
read word2

echo -n "Enter third word:"
read word3

if [$word1==$word2]; then
if [$word1==$word3]; then
echo "Word1, Word2, and Word3 are equal."
else
echo "word1 is equal to word2"
fi 
elif [$word1==$word3]; then
echo "word1 is equal to word3"
elif [$word2==$word3]; then
echo "word2 and word3 are equal"
else 
echo "None of the two words are equal."
fi

list = $(ls -1)
count = 0
for file in $list
do
if [-d $file ]; then
count = $(echo "$count +1" | bc)
echo "$file is a dir."
fi
done

if ["$count" -eq 0]; then
echo "No dir found."
fi

echo -n "Enter file:"
read filename

count =1 
while ["$count" -le 100]
do 
number=$(echo "$RANDOM%100 | bc)
echo "$number >>$filename
count = $(echo "$count+1" | bc)
done

echo -n "Enter filename:"
read filename

count =1

until ["$count" -gt 100]
do
number = $(echo "$RANDOM%100" | bc)
echo "$number" >>$filename
count = $(echo "$count+1" | bc)
done
