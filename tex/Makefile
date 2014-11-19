.PHONY: all clean

all: informe.pdf

PLP-TP3.st.txt: ../PLP-TP3.st
	tr -cd '\11\12\15\40-\176' < ../PLP-TP3.st | sed s/^M/\\n/g > PLP-TP3.st.txt

informe.pdf: informe.tex PLP-TP3.st.txt
	pdflatex -interaction=nonstopmode -halt-on-error informe.tex && \
	pdflatex -interaction=nonstopmode -halt-on-error informe.tex

clean:
	rm -f informe.pdf *.aux *.log *.toc *.out *.pdf
