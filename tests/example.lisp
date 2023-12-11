(defpackage :tcl2cl/tests
  (:use :cl :lisp-unit2))

(in-package :tcl2cl/tests)

(define-test example ()
  (assert-eql 1 (- 2 1)))
