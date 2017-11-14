LATEX := $(which pdflatex)

all: constitution.pdf
.PHONY: all

constitution.pdf: constitution.tex formatting.tex
	pdflatex --shell-escape $<
