tmpfiles = *.aux *.log *.toc *.fls *.nav *.out *.snm *.fdb_latexmk *.vrb *.gz *-blx.bib *.bbl *.blg *.run.xml

clean:
	rm -rf $(tmpfiles)