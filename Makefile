pdf:
	latexmk -shell-escape digital-signal-processing.tex

continuously:
	latexmk -pvc -shell-escape digital-signal-processing.tex

clean:
	rm *.aux *.log *.out *.toc *.pgf-plot.table *.pgf-plot.gnuplot *.fls *.fdb_latexmk
