DIRS := util,grading,x86
LIBS := unix,str
SUBMIT := backend.ml studenttests.ml
OTHER := gradedtests.ml main.ml 
HWNAME := hw03
TIMESTAMP := $(shell /bin/date "+%Y-%m-%d-%H:%M:%S")
ZIPNAME := $(HWNAME)-submit($(TIMESTAMP)).zip
all: main.native

.PHONY: all test clean zip
test: main.native
	./main.native --test

.PHONY: main.native
main.native:
	ocamlbuild -Is util,x86,ll,grading -libs unix,str -pkg zarith main.native -use-menhir
main.byte: $(SUBMIT) $(OTHER)
	ocamlbuild -Is $(DIRS) -libs $(LIBS) -pkg zarith main.byte

zip: $(SUBMIT)
	zip '$(ZIPNAME)' $(SUBMIT)

.PHONY: clean
clean:
	ocamlbuild -clean
	rm -rf output a.out
