EXE = whitepaper.pdf
COMPILER = pdflatex
FLAGS = --interaction=batchmode -output-directory pdf


WHITEPAPER_OBJECTS = $(EXE) whitepaper.aux whitepaper.log whitepaper.out
WHITEPAPER_SRC = src/introduction.tex


$(EXE): $(WHITEPAPER_SRC) 
	$(COMPILER) $(FLAGS) src/$(@:.pdf=.tex)


### PHONY

.PHONY: open clean


open:
	google-chrome pdf/whitepaper.pdf&


clean:
	rm -rf pdf/*



