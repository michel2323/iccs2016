
all: presentation.pdf


presentation.pdf: presentation.tex content.tex
	pdflatex -shell-escape -draftmode presentation.tex
	bibtex presentation
	pdflatex -shell-escape -draftmode presentation.tex
	bibtex presentation
	pdflatex -shell-escape presentation.tex
clean: 
	-rm presentation.pdf
	-rm *.aux *.toc *.snm *.vrb *.log *.nav *.out
	-rm *.bbl *.blg 


.PHONY: clean
