BOOK=book.asciidoc
OUTDIR=build

all: html

html:
	mkdir -p $(OUTDIR)
	asciidoctor -r asciidoctor-diagram -a imagesdir=$(IMAGESDIR) -D $(OUTDIR) $(BOOK)

pdf:
	mkdir -p $(OUTDIR)
	asciidoctor-pdf -r asciidoctor-diagram -D $(OUTDIR) $(BOOK)

epub:
	mkdir -p $(OUTDIR)
	asciidoctor-epub3 -D $(OUTDIR) $(BOOK)

clean:
	rm -rf $(OUTDIR)
