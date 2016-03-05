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
	if [ -d $1/$file ]
	then
		for file2 in `ls $1`
		do
			if ! [ $file == $file2 ] && diff $1/$file $1/$file2 >/dev/null
			then
				echo "katalogi z tymi samimi obiektami $file i $file2"
			fi
		done
	fi
done
exit 0
