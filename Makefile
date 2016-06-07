
all: presentation.pdf


presentation.pdf: presentation.tex content.tex
	#xelatex -shell-escape -draftmode presentation.tex
	#bibtex presentation
	#xelatex -shell-escape -draftmode presentation.tex
	#bibtex presentation
	#xelatex -shell-escape presentation.tex
	latex presentation.tex
	bibtex presentation
	latex presentation.tex
	bibtex presentation
	latex presentation.tex
	dvips presentation -o
	ps2pdf presentation.ps
clean: 
	-rm presentation.pdf
	-rm *.aux *.toc *.snm *.vrb *.log *.nav *.out
	-rm *.bbl *.blg 


.PHONY: clean
