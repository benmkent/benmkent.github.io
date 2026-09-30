PANDOC       ?= pandoc
PDF_ENGINE   ?= xelatex

PDF_SOURCES  := cv_pdf.md cv.md bio.md experience.md publications.md talks.md

SITE_DIR     := _site
OUTPUT_PDF   := cv.pdf

# Website: one page per markdown file, built into $(SITE_DIR). <page>.html
# comes from <page>.md, except the home page, which comes from bio.md.
# cv.md supplies the site title for every page. The nav links live in
# template.html.
PAGES        := index experience publications talks contact
HTML_PAGES   := $(addprefix $(SITE_DIR)/,$(addsuffix .html,$(PAGES)))
HTML_DEPS    := cv.md template.html header.html html-filters.lua

PANDOC_HTML   = $(PANDOC) cv.md $< \
		-s --template=template.html \
		--lua-filter=html-filters.lua \
		--css=styles.css \
		--include-in-header=header.html \
		--section-divs \
		-o $@

.PHONY: all html pdf site clean

all: html pdf

html: $(HTML_PAGES) $(SITE_DIR)/styles.css

$(SITE_DIR)/index.html: bio.md $(HTML_DEPS) | $(SITE_DIR)
	$(PANDOC_HTML)

$(SITE_DIR)/%.html: %.md $(HTML_DEPS) | $(SITE_DIR)
	$(PANDOC_HTML)

$(SITE_DIR)/styles.css: styles.css | $(SITE_DIR)
	cp $< $@

$(SITE_DIR):
	mkdir -p $@

# PDF CV: all sections in one document, without the HTML-only
# template/css/header. pdf-filters.lua fixes up <br> tags and empty
# headings, which are otherwise mishandled by the LaTeX writer.
pdf: $(OUTPUT_PDF)

$(OUTPUT_PDF): $(PDF_SOURCES) pdf-filters.lua
	$(PANDOC) $(PDF_SOURCES) \
		--lua-filter=pdf-filters.lua \
		--pdf-engine=$(PDF_ENGINE) \
		-o $(OUTPUT_PDF)

# Everything GitHub Pages serves; pandoc_build.yml runs this target.
site: html
	if [ -d images ]; then cp -r images $(SITE_DIR)/; fi

clean:
	rm -f $(OUTPUT_PDF)
	rm -rf $(SITE_DIR)
