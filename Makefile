DOT=dot
CC=pdflatex
BIB=bibtex
ARGS=
SRC=$(wildcard *.tex)
OBJ=$(SRC:.tex=)


RES_REP=plot/

all: figure thesis

thesis: pdf clean

graph: $(patsubst dot/%.dot,img/%.pdf,$(wildcard dot/*.dot))

figure:
	cd pics && make

pdf: $(SRC) ${ARGS}
	${CC} ${OBJ}
	#makeindex report.nlo -s nomencl.ist -o report.nls -t report.nlg
	${BIB} ${OBJ}
	${CC} ${OBJ}
	${BIB} ${OBJ}
	${CC} ${OBJ}

clean:
	rm -f *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *.brf *.blg *.bbl ${OBJ} *.bcf *.fls *.run.xml *.fdb_latexmk *~ *.nav *.snm
		rm -rf *.loa *.lof *.lot *.nlg *.nlo *.nls
	rm -rf parts/*.bak
	rm -rf *.mtc*
	rm -rf *.thm *.maf
