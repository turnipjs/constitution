LATEX := $(which pdflatex)

common_files := _build/commit_date.txt name_and_mission_statement.tex

all: bylaws.pdf constitution.pdf rules.pdf
.PHONY: all

%.pdf: %.tex formatting.tex _build $(common_files)
	pdflatex -interaction=nonstopmode -halt-on-error -output-directory _build $<

_build/commit_date.txt: _build
	git log -1 --format="%ad" --date=short > $@
.PHONY: _build/commit_date.txt

_build:
	mkdir _build
