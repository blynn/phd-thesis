target: thesis.ps microfilm.ps

microfilm.ps: microfilm.tex abstract.tex
	latex microfilm.tex
	dvips microfilm.dvi

thesis.ps: *.tex
	latex thesis.tex
	bibtex thesis
	latex thesis.tex
	dvips thesis.dvi

clean:
	-rm -rf *.aux *.log *.dvi *.ps
