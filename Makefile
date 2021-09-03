# Edit variables below to customize book
booktitle = Robot People
booksubtitle = A 10-Year Roadmap to Artificial Survival Intelligence
bookauthors = Eric Jang
bookfilename = book

# Add all sources that need to compile to some html page
SOURCES := sources/index.md \
           sources/chapter00.md \
           sources/chapter01.md \
           sources/chapter02.md \
           sources/chapter03.md \
           sources/chapter04.md \
           sources/chapter05.md \
           sources/chapter05_1.md \
           sources/chapter06.md \
           sources/chapter07.md \
           sources/chapter08.md \
           sources/chapter09.md \
           sources/chapter10.md \
           sources/chapter11.md \
           sources/chapter12.md \
           sources/chapter13.md \
           sources/chapter14.md \
           sources/chapter15.md \
           sources/chapter16.md \
           sources/chapter17.md \
           sources/chapter18.md \
           sources/chapter19.md \
           sources/chapter20.md \
           sources/chapter21.md \

# Put everything that should compile into an individual chapter.
CHAPTERS := sources/chapter00.md \
            sources/chapter01.md \
            sources/chapter02.md \
            sources/chapter03.md \
            sources/chapter04.md \
            sources/chapter05.md \
            sources/chapter05_1.md \
            sources/chapter06.md \
            sources/chapter07.md \
            sources/chapter08.md \
            sources/chapter09.md \
            sources/chapter10.md \
            sources/chapter11.md \
            sources/chapter12.md \
            sources/chapter13.md \
            sources/chapter14.md \
            sources/chapter15.md \
            sources/chapter16.md \
            sources/chapter17.md \
            sources/chapter18.md \
            sources/chapter19.md \
            sources/chapter20.md \
            sources/chapter21.md \


################################################################################
#                        DO NOT EDIT BELOW THIS COMMENT                        #
################################################################################

# All style files you're using.
STYLES := css/tufte.css \
          css/numenvs.css \
          css/navbar.css \
          css/frontpage.css \

# Collect assets to be copied for html version.
WEBASSETS := $(wildcard assets/*.svg assets/*.jpg assets/*.png)

# Create targets for each web asset.
WEBTARGETS = $(patsubst %,publish/%,$(WEBASSETS))

FILTERS := $(wildcard filters/*.py)

HTMLTARGETS := $(patsubst sources/%.md,publish/%.html,$(SOURCES))

PDFTARGETS := $(patsubst sources/%.md,publish/pdf/%.pdf,$(CHAPTERS))

.PHONY: all
all: html pdf

html: $(WEBTARGETS) $(HTMLTARGETS) publish/index.html publish/style.css

pdf: publish/pdf/$(bookfilename).pdf $(PDFTARGETS)

publish/assets/%: assets/%
	cp $< $@;

publish/style.css: $(STYLES)
	cat $(STYLES) > publish/style.css;


## Rule to create individual HTML chapters from markdown
publish/%.html: sources/%.md templates/tufte.html5 Makefile $(FILTERS) references.bib templates/shared-macros.tex
	pandoc templates/shared-macros.tex $< \
    --to html5 \
    --katex \
    --citeproc \
    --template templates/tufte.html5 \
    --csl=templates/chicago-fullnote-bibliography.csl \
    --metadata link-citations=false \
    --bibliography=references.bib \
    --strip-comments \
    --katex \
    --from markdown+smart \
    --section-divs \
    --table-of-contents \
    --toc-depth=2 \
    --filter ./filters/whitespace.py \
    --filter ./filters/sidenote.py \
    --filter ./filters/numenvs.py \
    --filter ./filters/crossrefs.py \
    --css style.css \
    --variable lang="en" \
    --variable lastupdate="`date -r $<`" \
    --variable references-section-title="References" \
    --output $@;


## Special rule to make the index page
publish/index.html: sources/index.md templates/index.html5 Makefile $(FILTERS)
	pandoc $< \
    --strip-comments \
    --toc-depth=2 \
    --from markdown+smart \
    --section-divs \
    --table-of-contents \
    --to html5 \
    --css style.css \
    --variable lang="en" \
    --variable lastupdate="`date -r $<`" \
    --template templates/index.html5 \
    --output $@;


## Rule to create individual PDF chapters from markdown
publish/pdf/%.pdf: sources/%.md templates/book.tex Makefile $(FILTERS) references.bib templates/shared-macros.tex
	pandoc $< \
    --citeproc \
    --bibliography=references.bib \
    --csl=templates/chicago-fullnote-bibliography.csl \
    --metadata link-citations=false \
    --filter ./filters/whitespace.py \
    --filter ./filters/numenvs.py \
    --filter ./filters/crossrefs.py \
    --filter ./filters/sidenote.py \
    --variable chapter-layout=true \
    --variable booktitle="${booktitle}" \
    --variable booksubtitle="${booksubtitle}" \
    --variable bookauthors="${bookauthors}" \
    --variable lastupdate="`date -r $< +%Y-%m-%d`" \
    --template templates/book.tex \
    --output $@; \


## Rule to create PDF book.
## Step 1: Give each markdown file a chapter heading.
## Step 2: Compile markdown sources into tex using pandoc
## Step 3: Compile tex sources using pdflatex
publish/pdf/$(bookfilename).pdf: $(CHAPTERS) templates/book.tex templates/references.md Makefile $(FILTERS) templates/shared-macros.tex references.bib
	$(foreach chapter,$(CHAPTERS),\
      pandoc --template templates/chapter.md $(chapter) \
      --id-prefix=$(notdir $(chapter)) \
      --output tmp-$(notdir $(chapter));) \
    pandoc \
    --citeproc \
    --bibliography=references.bib \
    --csl=templates/chicago-fullnote-bibliography.csl \
    --metadata link-citations=false \
    --filter ./filters/whitespace.py \
    --filter ./filters/numenvs.py \
    --filter ./filters/crossrefs.py \
    --filter ./filters/svgimagext.py \
    --filter ./filters/sidenote.py \
    --template templates/book.tex \
    --variable book-layout=true \
    --variable lastupdate="`date`" \
    --variable booktitle="${booktitle}" \
    --variable booksubtitle="${booksubtitle}" \
    --variable bookauthors="${bookauthors}" \
    --variable titlepagemidnote="${titlepagemidnote}" \
    --variable titlepagefootnote="${titlepagefootnote}" \
    --output publish/pdf/$(bookfilename).tex \
    $(foreach chapter,$(CHAPTERS),tmp-$(notdir $(chapter))) templates/references.md; \
    $(foreach chapter,$(CHAPTERS),rm tmp-$(notdir $(chapter));) \
    pdflatex publish/pdf/$(bookfilename).tex; \
    pdflatex publish/pdf/$(bookfilename).tex; \
    mv $(bookfilename).pdf publish/pdf; \
    rm $(bookfilename).* ; \
    rm publish/pdf/$(bookfilename).tex
