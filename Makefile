RMDS=$(wildcard *.Rmd)
IPYNBS:=$(patsubst %.Rmd,%.ipynb,$(RMDS))

notebooks: $(IPYNBS)

%.ipynb: %.Rmd
	# Build notebook
	jupytext $< --execute --to ipynb -o $@

clean:
	rm $(IPYNBS)

rebuild: clean notebooks
