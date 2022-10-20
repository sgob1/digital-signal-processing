pdf:
	latexmk -xelatex -shell-escape digital-signal-processing.tex

continuous:
	latexmk -pvc -xelatex -shell-escape digital-signal-processing.tex

clean:
	rm *.aux *.log *.out *.toc *.xdv *.pgf-plot.table *.pgf-plot.gnuplot *.fls *.fdb_latexmk *.eps
