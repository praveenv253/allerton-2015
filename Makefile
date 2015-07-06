all: paper.pdf

paper.pdf: paper.dvi
	dvipdf paper.dvi

paper.dvi: paper.tex references.bib
	latex paper.tex
	bibtex paper.aux
	latex paper.tex
	latex paper.tex
