### params
EXE = whitepaper.pdf
COMPILER = pdflatex
FLAGS = --interaction=batchmode -output-directory pdf
DIR = src/

### get objects of all sections
INTRODUCTION_DIR = src/introduction
INTRODUCTION_OBJS = $(wildcard $(INTRODUCTION_DIR)/*.tex)

BLOCKCHAIN_DIR = src/blockchain
BLOCKCHAIN_OBJS = $(wildcard $(BLOCKCHAIN_DIR)/*.tex)

MANUFACTURER_DIR = src/manufacturer_platform
MANUFACTURER_OBJS = $(wildcard $(MANUFACTURER_DIR)/*.tex)

PRESCRIBER_DIR = src/prescriber_platform
PRESCRIBER_OBJS = $(wildcard $(PRESCRIBER_DIR)/*.tex)


PATIENT_DIR = src/patient_platform
PATIENT_OBJS = $(wildcard $(PATIENT_DIR)/*.tex)




WHITEPAPER_OBJS = $(INTRODUCTION_OBJS) \
                  $(BLOCKCHAIN_OBJS) \
		  $(MANUFACTURER_OBJS) \
		  $(PATIENT_OBJS) \
	          $(PRESCRIBER_OBJS)


### compile main

$(EXE): $(WHITEPAPER_OBJS) 
	$(COMPILER) $(FLAGS) $(DIR)$(@:.pdf=.tex)


### PHONY

.PHONY: open clean


open:
	google-chrome pdf/whitepaper.pdf &

test:
	echo $(PATIENT_OBJS)

clean:
	rm -rf pdf/*
