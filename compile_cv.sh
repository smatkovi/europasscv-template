#!/bin/sh

REMOVEPUBLICATIONSAUTHORS=1
REMOVEPICTURES_ACADEMIC=1

EXPECTEDPARSCOUNT=3

if [ "$#" != "$EXPECTEDPARSCOUNT" ]; then
	echo "Usage: $0 <file.tex> <publications.bib> <language>"
	exit 1
fi

cp "$1" template/cv.tex
cp "$2" template/publications.bib

cd template/

BIBFILE="bibliography.bib"
if [ "$REMOVEPUBLICATIONSAUTHORS" == "1" ]; then
	BIBFILE="bibliography_authors.bib"
fi

rm $BIBFILE > /dev/null 2> /dev/null
mv publications.bib $BIBFILE > /dev/null 2> /dev/null

if [ -f "bibliography_authors.bib" ]; then
	if [ "$REMOVEPUBLICATIONSAUTHORS" == "1" ]; then
		rm bibliography.bib > /dev/null 2> /dev/null
		cat bibliography_authors.bib | grep -v "Author" > bibliography.bib
	else
		cp bibliography_authors.bib bibliography.bib
	fi
fi

rm cv.b* > /dev/null 2> /dev/null

pdflatex cv.tex
bibtex cv
pdflatex cv.tex
pdflatex cv.tex
mv cv.pdf ../cv_$3.pdf

# compiling for academic part

if [ "$REMOVEPICTURES_ACADEMIC" == "1" ]; then
	cat cv.tex | sed -e 's/academic'}{'false/academic'}{'true/g' | sed -e 's/\\ecvpicture/%\\ecvpicture/g' | sed -e 's/\\ecvqrcode/%\\ecvqrcode/g' | sed -e 's/\\ecvbefore/%\\ecvbefore/g' | sed -e 's/\\ecvafter/%\\ecvafter/g' > cv_academic.tex
else
	cat cv.tex | sed -e 's/academic'}{'false/academic'}{'true/g' > cv_academic.tex
fi
pdflatex cv_academic.tex
bibtex cv_academic
pdflatex cv_academic.tex
pdflatex cv_academic.tex
mv cv_academic.pdf ../cv_academic_$3.pdf
rm cv_academic.* > /dev/null 2> /dev/null

rm bibliography_authors.bib > /dev/null 2> /dev/null

rm cv.* > /dev/null 2> /dev/null

# going back

cd ..

exit 0
