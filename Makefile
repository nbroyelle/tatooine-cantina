.PHONY: all
all: clean dist

.PHONY: main.html
main.html:
	asciidoctor main.adoc

.PHONY: dist
dist: main.html
	mkdir -p ./dist
	cp ./main.html ./dist/index.html

.PHONY: clean
clean:
	rm -rf ./dist/ ./main.html