BOOK=book.asciidoc
OUTDIR=build

all: html

.PHONY: html html_local html_pages publish_pages pdf epub clean

html:
	mkdir -p $(OUTDIR)
	asciidoctor -r asciidoctor-diagram -a imagesdir=$(IMAGESDIR) -D $(OUTDIR) $(BOOK)

html_local:
	$(MAKE) html OUTDIR=build IMAGESDIR=..

html_pages:
	$(MAKE) html OUTDIR=../docs IMAGESDIR=.

publish_pages: html_pages
	rsync -a ../images/ ../docs/images/
	cp ../docs/book.html ../docs/index.html

pdf:
	mkdir -p $(OUTDIR)
	asciidoctor-pdf -r asciidoctor-diagram -D $(OUTDIR) $(BOOK)

epub:
	mkdir -p $(OUTDIR)
	asciidoctor-epub3 -D $(OUTDIR) $(BOOK)

clean:
	rm -rf $(OUTDIR)
