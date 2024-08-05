all:
	pdflatex cv.tex
	open cv.pdf &

clean:
	rm -f *.aux *.log *.toc *.blg *.out *.fls *.fdb_latexmk
