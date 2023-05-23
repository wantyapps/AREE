PHONY := all
all: AREE.pdf

PHONY += AREE.pdf
AREE.pdf: AREE.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make $^

PHONY += clean
clean:
	latexmk -CA
