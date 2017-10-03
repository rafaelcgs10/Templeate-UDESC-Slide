FILENAME=main
COMP=pdflatex  -shell-escape

pdf:
	$(COMP) ${FILENAME}
	bibtex  ${FILENAME}||true
	$(COMP) ${FILENAME}
	$(COMP) ${FILENAME}

read:
	evince ${FILENAME}.pdf &

clean:
	rm -f ${FILENAME}.{ps,pdf,log,aux,out,dvi,bbl,blg}

