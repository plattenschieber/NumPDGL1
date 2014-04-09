texfiles=Vorlesung*.tex index.tex skriptheader.tex
output=NumPDGI
otherfiles=makefile

NumPDGI.pdf: $(texfiles)
	pdflatex  -shell-escape -jobname=$(output) index.tex
	pdflatex  -shell-escape -jobname=$(output) index.tex

archiv: NumPDGI.pdf $(texfiles) $(otherfiles) 
	zip $(output).zip $^

cleanup:
	rm *~
	rm $(output)*
