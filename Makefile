NOTEBOOKS:=$(patsubst %.Rmd,%.ipynb,$(wildcard *.Rmd))

notebooks: $(NOTEBOOKS)

%.ipynb: %.Rmd
	# Build notebook
	jupytext $< --execute --to ipynb -o $@
