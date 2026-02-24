.PHONY: clean build view

clean:
	rm -rf epq.aux
	rm -rf epq.bbl
	rm -rf epq.blg
	rm -rf epq.lof
	rm -rf epq.log
	rm -rf epq.lot
	rm -rf epq.out
	rm -rf epq.toc
build: clean
	pdflatex epq
	bibtex epq
	pdflatex epq
	pdflatex epq
view: build
	mupdf epq.pdf
