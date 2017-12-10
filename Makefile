LATEX := $(which pdflatex)

common_files := name_and_mission_statement.tex

all: bylaws.pdf constitution.pdf rules.pdf
.PHONY: all

%.pdf: %.tex formatting.tex _build $(common_files)
	pdflatex -interaction=nonstopmode -halt-on-error -output-directory _build $<

_build:
	mkdir _build
