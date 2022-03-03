CC=pdflatex
REP_GRAPH=graph/
SRC=$(wildcard *.tex)
REP_PDF=../out
OBJ=$(SRC:.tex=.pdf)
GENERATOR_GRAPH=tex_generator.py
LOG=1

all : $(OBJ) clean

# alert:
# 	@echo "Generate TIKZ figure"
# 	cd ${REP_GRAPH} && make LOG=${LOG}

%.pdf: %.tex
	@echo "Compile $*"
	@if [ $(LOG) = 1 ]; then \
		$(CC) $< > $*.log ; \
	else \
		$(CC) $< ; \
	fi
	@mv $@ $(REP_PDF)

clean:
	# cd ${REP_GRAPH} && make clean
	rm -f *.log *.aux

mrproper: clean
	# cd ${REP_GRAPH} && make mrproper
	rm -f ${REP_PDF}*.pdf
