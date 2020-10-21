
#LATEX=latex
LATEX=pdflatex
BIBTEX=bibtex

default=metsahovi.pdf

metsahovi.pdf:main_P1.tex *.tex main_P1.bib Makefile *png *.tex
	$(LATEX) main_P1
	$(BIBTEX) main_P1
	$(LATEX) main_P1
	$(LATEX) main_P1
	mv main_P1.pdf metsahovi.pdf
clean:
	rm -f *.aux  *.nav *.out *.snm *.toc *.blg *.end *.log *~
pristine: clean
	rm -f *.bbl 

