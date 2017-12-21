#include <stdio.h>
#include <ecl/ecl.h>

void init_lib_ECL_HELLO_R_LISP(cl_object);

int main (int argc, char **argv) {
    cl_boot(argc, argv);
    ecl_init_module(NULL, init_lib_ECL_HELLO_R_LISP);

    cl_object result = cl_eval(c_string_to_object("(ecl-hello-r-lisp)"));
    ecl_print(result, ECL_T); // "Hello, /r/lisp!"

    cl_object my_fun = cl_eval(c_string_to_object("(lambda (x) (1+ x))"));
    result = cl_funcall(2, my_fun, ecl_make_fixnum(41));
    ecl_print(result, ECL_T); // 42

    ecl_terpri(ECL_T);
    cl_shutdown();

    return 0;
}
