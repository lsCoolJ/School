all:
	pdflatex -output-directory=out src/Statistics\ Notes.tex
	pdflatex -output-directory=out src/Statistics\ Notes.tex

	rm out/*.log out/*.aux out/*.toc out/*.out
	mv out/Statistics\ Notes.pdf out/StatsNotes.pdf
	open out/StatsNotes.pdf