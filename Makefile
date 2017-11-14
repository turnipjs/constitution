LATEX := $(which pdflatex)

all: bylaws.pdf constitution.pdf
.PHONY: all

%.pdf: %.tex formatting.tex name_and_mission_statement.tex
	pdflatex --shell-escape $<
