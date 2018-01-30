#!/bin/bash

# author: Thomas Salm
# http://www.devtom.de

EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
	echo "Usage: `basename $0` {png|pngalpha|eps|pdf|svg}"
	exit $E_BADARGS
fi

case $1 in # use first argument
	png)
		params="-dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts --png -dresolution=150"
		;;
	pngalpha)
		params="-dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts -dpixmap-format=pngalpha --png -dresolution=150"
		;;
	eps|pdf)
		params="-dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts"
		;;
	svg)
		params="-dbackend=svg"
		;;
	*)
		params=""
		;;
esac

for lyFile in `ls -1 src/*.ly`
do
	lilypond $params -o out $lyFile
done

# In case of pdf which is the same command as eps,
# remove eps files and pdf duplicates
if [ "$1" == "pdf" ]
then
	rm *.eps
	rm *-1.pdf
fi
