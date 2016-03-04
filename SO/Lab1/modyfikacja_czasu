#!/bin/bash
if [ "$#" != "1" ]
then
	echo "wymagany jeden parametr = nazwa katalogu"
	exit 1
fi
if [ ! -d $1 ]
then
	echo "Nie ma takiego katalogu"
	exit 2
fi
for file in `ls $1`
do
	if [ -w $1/$file ] && [ -f $1/$file ]
	then
		touch "$1/$file"
	fi
done
exit 0


