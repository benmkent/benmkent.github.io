PANDOC       ?= pandoc
PDF_ENGINE   ?= xelatex

HTML_SOURCES := cv.md bio.md contact.md experience.md publications.md talks.md
PDF_SOURCES  := cv_pdf.md cv.md bio.md contact.md experience.md publications.md talks.md

SITE_DIR     := _site
OUTPUT_HTML  := index.html
OUTPUT_PDF   := cv.pdf

.PHONY: all html pdf site clean

all: html pdf

# Equivalent of the "Build HTML with Pandoc" step in pandoc_build.yml
html: $(OUTPUT_HTML)

$(OUTPUT_HTML): $(HTML_SOURCES) styles.css header.html script.js
	$(PANDOC) $(HTML_SOURCES) \
		-s --toc --toc-depth=2 \
		--css=styles.css \
		--include-in-header=header.html \
		--include-after-body=script.js \
		--section-divs \
		-o $(OUTPUT_HTML)

# PDF CV: same content as the HTML build, but without the TOC sidebar
# and without the HTML-only includes (css/header/script). pdf-filters.lua
# fixes up <br> tags and empty headings, which are otherwise mishandled
# by the LaTeX writer.
pdf: $(OUTPUT_PDF)

$(OUTPUT_PDF): $(PDF_SOURCES) pdf-filters.lua
	$(PANDOC) $(PDF_SOURCES) \
		--lua-filter=pdf-filters.lua \
		--pdf-engine=$(PDF_ENGINE) \
		-o $(OUTPUT_PDF)

# Equivalent of the "deploy" job: assemble the static site directory
# that would be uploaded to GitHub Pages.
site: html
	rm -rf $(SITE_DIR)
	mkdir -p $(SITE_DIR)
	cp $(OUTPUT_HTML) $(SITE_DIR)/
	cp styles.css $(SITE_DIR)/
	if [ -d images ]; then cp -r images $(SITE_DIR)/; fi

clean:
	rm -f $(OUTPUT_HTML) $(OUTPUT_PDF)
	rm -rf $(SITE_DIR)
