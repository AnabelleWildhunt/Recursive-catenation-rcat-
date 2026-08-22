#!/bin/bash
#Script which allows to recursively concatinate content of the directory
#Made by Anabelle of the Wildhunt in 2026

pwd=$(pwd)
list=$(ls -l $pwd/$1 | awk 'NR > 1 {print $NF}')

for i in $list
do
	cat $pwd/$1/$i
	echo
done
