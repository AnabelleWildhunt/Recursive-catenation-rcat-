#!/bin/bash
#Script which allows to recursively concatinate content of the directory
#Made by Anabelle of the Wildhunt in 2026

pwd=$(pwd)
list=$(ls -l $pwd/$1 | awk 'NR > 1 {print $NF}')

for i in $list
do
	if [[ -d "$pwd/$1/$i" ]]
	then
		"$0" "$1/$i"
	else
		echo
		printf '\e[33m%s\e[0m\n' "$pwd/$1/$i"
		echo
		cat $pwd/$1/$i
		echo
	fi
done
