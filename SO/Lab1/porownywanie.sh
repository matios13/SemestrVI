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
		lista = `ls $1/$file`
		do
		 ! [ $file == $file2 ] && [ `ls $1/$file` == 2 ] && echo "katalogi z tymi samimi obiektami $1 i $2"	
		done
	fi
done
exit 0
