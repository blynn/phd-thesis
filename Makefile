target: thesis.ps microfilm.ps

microfilm.ps: microfilm.tex abstract.tex
	latex microfilm.tex
	dvips microfilm.dvi

thesis.ps: *.tex thesis.bib
	latex thesis.tex
	bibtex thesis
	latex thesis.tex
	dvips -t letter thesis.dvi

buchblock.ps: *.tex thesis.bib
	latex buchblock.tex
	bibtex buchblock
	latex buchblock.tex
	dvips -t a4 buchblock.dvi

buchblock.pdf: buchblock.ps
	ps2pdf $^

clean:
	-rm -rf *.aux *.log *.dvi *.ps
