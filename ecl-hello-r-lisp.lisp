(defun get-c-ORGANIZATION-constant ()
  (ffi:clines "#include <constants.h>")
  (ffi:c-inline () () :cstring "ORGANIZATION" :one-liner t :side-effects nil))

(defun ecl-hello-r-lisp ()
  (let ((org (get-c-ORGANIZATION-constant)))
    (concatenate 'string "Hello," " " org "!")))
