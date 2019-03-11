## About
This "hello world" exercise is a modified version of [the embed example from
the ecl repository](https://gitlab.com/embeddable-common-lisp/ecl/blob/develop/examples/embed/README).

The exercise demonstrates:
  1. writing an ECL program (lprog) which uses FFI to access a constant defined
  in a C header file
  2. compiling lprog using ecl
  3. writing a C program (cprog) which calls function provided by lprog
  4. compiling a C program (cprog) which links lprog

## Following along at home
1. clone [the ecl repository](https://gitlab.com/embeddable-common-lisp/ecl)
2. install ecl from your distribution's package manager (YMMV) or [from source](https://common-lisp.net/project/ecl/static/manual/pr01s06.html)
3. run `make` from this repository's root
4. you _should_ now have and executable which can be run using:
`./ecl-hello-r-lisp`

## Credits, Resources, etc.
- https://common-lisp.net/project/ecl/main.html
- https://gitlab.com/embeddable-common-lisp/ecl/tree/develop/examples/embed
- https://stackoverflow.com/questions/47562440/how-can-i-return-a-string-from-a-call-to-ffic-inline-in-ecl
