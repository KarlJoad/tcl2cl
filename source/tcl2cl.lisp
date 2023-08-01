(defpackage tcl2cl
  (:use :cl)
  (:export #:hello))

(in-package :tcl2cl)

(defun hello ()
  (format t "Hello to Tcl2CL!~&"))
