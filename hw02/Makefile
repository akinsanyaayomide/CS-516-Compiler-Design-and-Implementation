DIRS := util,grading,x86
LIBS := unix,str
SUBMIT := simulator.ml studenttests.ml
OTHER := gradedtests.ml main.ml 
HWNAME := hw02
TIMESTAMP := $(shell /bin/date "+%Y-%m-%d-%H:%M:%S")
ZIPNAME := $(HWNAME)-submit($(TIMESTAMP)).zip

.PHONY: all test clean zip

main.native: $(SUBMIT) $(OTHER)
	ocamlbuild -Is $(DIRS) -libs $(LIBS) -pkg zarith main.native

main.byte: $(SUBMIT) $(OTHER)
	ocamlbuild -Is $(DIRS) -libs $(LIBS) -pkg zarith main.byte

all: main.byte main.native

test: main.native
	./main.native --test

zip: $(SUBMIT)
	zip '$(ZIPNAME)' $(SUBMIT)


clean:
	ocamlbuild -clean
