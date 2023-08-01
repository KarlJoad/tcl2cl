(defpackage :chil/tests
  (:use :cl :lisp-unit2))

(in-package :chil/tests)

(define-test example ()
  (assert-eql 1 (- 2 1)))
