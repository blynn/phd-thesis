target:
	latex thesis.tex
	bibtex thesis
	latex thesis.tex
	dvips thesis.dvi

clean:
	-rm -rf *.aux *.log *.dvi *.ps
