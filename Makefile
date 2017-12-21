ecl-hello-r-lisp: ecl-hello-r-lisp.c ecl-hello-r-lisp.a
		$(CC) `ecl-config --cflags` -o $@ ecl-hello-r-lisp.c ecl-hello-r-lisp.a `ecl-config --ldflags` -lecl

ecl-hello-r-lisp.a: constants.h ecl-hello-r-lisp.lisp
		# HACK: Force recompilation of ecl-hello-r-lisp.lisp
		# when header file changes. There's likely a better
		# way to do this via asdf:make-build ...
		touch ecl-hello-r-lisp.lisp
		ecl -norc \
		-eval '(require :asdf)' \
		-eval '(push "./" asdf:*central-registry*)' \
		-eval '(asdf:make-build :ecl-hello-r-lisp :type :static-library :move-here "./" :init-name "init_lib_ECL_HELLO_R_LISP")' \
		-eval '(quit)'

.PHONY:clean
clean:
		rm -rf ecl-hello-r-lisp.a ecl-hello-r-lisp
