INCLUDES= util,x86,grading,ll
LIBS = unix,str
SUBMIT := solver.ml alias.ml backend.ml dce.ml constprop.ml

HWNAME := hw06
TIMESTAMP := $(shell /bin/date "+%Y-%m-%d-%H:%M:%S")
ZIPNAME := $(HWNAME)-submit($(TIMESTAMP)).zip


all: main.native

.PHONY: test
test: main.native
	./main.native --test

.PHONY: main.native
main.native: 
	ocamlbuild -Is $(INCLUDES) -libs $(LIBS) -pkg zarith main.native -use-menhir -yaccflag --explain

.PHONY: printanalysis.native
printanalysis.native: 
	ocamlbuild -Is $(INCLUDES) -libs $(LIBS) printanalysis.native -use-menhir -yaccflag --explain


zip: $(SUBMIT)
	zip '$(ZIPNAME)' $(SUBMIT)

.PHONY: clean
clean:
	ocamlbuild -clean
	rm -rf output a.out