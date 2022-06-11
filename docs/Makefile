FACTORY=slidefactory.sif
OPTIONS=

SRC=$(wildcard *.md)
HTML=$(patsubst %.md,%.html,$(SRC))
PDF=$(patsubst %.md,%.pdf,$(SRC))

.PHONY: html pdf clean

html: $(HTML) index.html

pdf: $(PDF)

index.html: $(HTML)
	bash generate-index.sh

clean:
	-rm -f $(HTML) $(PDF) index.html

%.html: %.md
	$(FACTORY) $(OPTIONS) $<

%.pdf: %.md
	$(FACTORY) $(OPTIONS) --pdf $<
