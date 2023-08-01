LISP_PROG := @LISP_PROGRAM@
LISP_FLAGS := --no-userinit --non-interactive

makefile_dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

lisp_eval := $(LISP_PROG) $(LISP_FLAGS) \
             --eval '(require "asdf")' \
             --eval '(asdf:load-asd "$(makefile_dir)/tcl2cl.asd")' \
             --eval

lisp_quit := --eval '(uiop:quit)'

tcl2cl_files := tcl2cl.asd $(shell find . -type f -name '*.lisp')

.PHONY: build
build: $(tcl2cl_files)
	$(lisp_eval) '(asdf:compile-system :tcl2cl)'

tcl2cl_tests := tcl2cl.asd $(shell find ./tests/ -type f -name '*.lisp')
.PHONY: check
check: $(tcl2cl_files) $(tcl2cl_tests)
	$(lisp_eval) '(asdf:test-system :tcl2cl)'

include doc/local.mk
