target:
	latex thesis.tex
	dvips thesis.dvi

clean:
	-rm -rf *.aux *.log *.dvi *.ps
