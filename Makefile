BUNDLE       = PLP-TP3.tar.gz
BUNDLE_DIR   = PLP-TP3
BUNDLE_FILES = PLP-TP3.st tex Makefile README.md enunciado.pdf informe.pdf

.PHONY: all clean clean-tex bundle

all: informe.pdf

informe.pdf:
	make -C tex all
	mv tex/informe.pdf .

bundle: clean informe.pdf 
	make clean-tex
	mkdir $(BUNDLE_DIR)
	cp $(BUNDLE_FILES) $(BUNDLE_DIR) -r
	tar zcf $(BUNDLE) $(BUNDLE_DIR)
	rm -rf $(BUNDLE_DIR)

clean: clean-tex
	rm -rf informe.pdf $(BUNDLE) $(BUNDLE_DIR)
	find . -type f -name *.swp -delete

clean-tex:
	make -C tex clean
