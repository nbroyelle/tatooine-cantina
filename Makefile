.PHONY: all
all: clean dist

.PHONY: main.html
main.html:
	asciidoctor main.adoc

.PHONY: dist
dist: main.html
	mkdir -p ./dist
	mkdir -p ./dist/images
	cp ./main.html ./dist/index.html
	cp -r ./images/. ./dist/images

.PHONY: clean
clean:
	rm -rf ./dist/ ./main.html