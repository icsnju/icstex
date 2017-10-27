PDFLATEX_FLAGS  = -halt-on-error

all: main.pdf

main.pdf: *.tex *.bib
	xelatex main.tex
	bibtex main
	xelatex main.tex
	xelatex main.tex
	open main.pdf


.PHONY: display clean
display: main.pdf
	evince main.pdf
clean:
	latexmk -CA
	rm main.bbl

