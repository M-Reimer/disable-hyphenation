# -*- Mode: Makefile -*-
#
# Makefile for Disable Hyphenation
#

FILES = manifest.json \
        stylesheet.css \
        $(wildcard _locales/*/messages.json) \
        $(wildcard icons/*.svg)

disable-hyphenation-trunk.xpi: $(FILES)
	@zip -9 - $^ > $@

clean:
	rm -f disable-hyphenation-trunk.xpi
