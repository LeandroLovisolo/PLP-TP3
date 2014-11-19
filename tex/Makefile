.PHONY: all clean

all: informe.pdf

PLP-TP3.st.txt:
	iconv -f utf8 -t ascii//TRANSLIT < ../PLP-TP3.st | tr -cd '\11\12\15\40-\176' | sed s/\\r/\\n/g > PLP-TP3.st.txt

informe.pdf: informe.tex PLP-TP3.st.txt
	pdflatex -interaction=nonstopmode -halt-on-error informe.tex && \
	pdflatex -interaction=nonstopmode -halt-on-error informe.tex

clean:
	rm -f informe.pdf PLP-TP3.st.txt *.aux *.log *.toc *.out *.pdf
