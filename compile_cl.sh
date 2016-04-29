#!/bin/sh

EXPECTEDPARSCOUNT=2

if [ "$#" != "$EXPECTEDPARSCOUNT" ]; then
	echo "Usage: $0 <file.tex> <language>"
	exit 1
fi

cp "$1" template/cl.tex

cd template/

rm cl.b* > /dev/null 2> /dev/null

pdflatex cl.tex
mv cl.pdf ../cl_$2.pdf

rm cl.* > /dev/null 2> /dev/null

# going back

cd ..

exit 0
