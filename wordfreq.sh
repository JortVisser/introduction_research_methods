#!/bin/bash
# Jort Visser
# descr: generate a word frequency list for the word 'de'
# 12-3-2018
# Usage: ./wordfreq.sh FILE

TEXT=$1
if [ -z "$TEXT" ]
then
    echo "specify a file!"    				#copied from slides because it looked cool and the program would be extreme short without it.
    exit
fi

echo This program will print the amount of times the word de occures in the selected file.

cat $TEXT | grep -i -o "\bde\b" | wc -l			#the word 'de' is surrounded by \b because otherwise it would also pick up occurences of 'de' in other words. 
