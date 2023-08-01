(defsystem :tcl2cl
  :author "Karl Hallsby <karl@hallsby.com>"
  :description "Tcl/Tk to Common Lisp Transpiler"
  :pathname #p"source/"
  :components ((:file "tcl2cl"))
  :depends-on (:log4cl)
  :in-order-to ((test-op (test-op "tcl2cl/tests"))))

(defsystem :tcl2cl/tests
  :depends-on (:tcl2cl :alexandria :lisp-unit2)
  :pathname #p"tests/"
  :components ((:file "example")))
