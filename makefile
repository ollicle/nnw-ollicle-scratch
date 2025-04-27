#
# Makefile for Scratch.nnwtheme
#

SRC_DIR = ./src
PKG = ./Scratch.nnwtheme
DIST_DIR = ./dist
INFO_PATH = $(PWD)/src/Info
VERSION = $(shell defaults read $(INFO_PATH) Version)
VERSION_PKG = ./Scratch_v$(VERSION).nnwtheme
ZIP = ./Scratch.nnwtheme_v$(VERSION).zip
VERSION_ZIP = ./Scratch_v$(VERSION).nnwtheme.zip

.DEFAULT: all

.PHONY: all clean install

all: clean build

clean:
	-rm -rf $(PKG)
	-rm -rf $(VERSION_PKG)

install: all
	open $(PKG)/.

build: $(PKG) $(ZIP)

$(PKG):
	mkdir -p $(PKG)
	cp README.md $(PKG)/.
	cp LICENCE $(PKG)/.
	cp -R $(SRC_DIR)/* $(PKG)/.
	mkdir -p $(VERSION_PKG)
	cp -R $(PKG)/* $(VERSION_PKG)/.

$(ZIP):
	mkdir -p $(DIST_DIR)
	zip -r $(DIST_DIR)/$(ZIP) $(PKG)
	zip -r $(DIST_DIR)/$(VERSION_ZIP) $(VERSION_PKG)