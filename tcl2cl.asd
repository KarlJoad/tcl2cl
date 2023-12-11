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

(defmethod asdf:perform ((o asdf:test-op) (c (eql (find-system :tcl2cl/tests))))
  ;; Binding `*package*' to package-under-test makes for more reproducible tests.
  (let ((*package* (find-package :tcl2cl/tests)))
    (uiop:symbol-call
     :lisp-unit2 :run-tests
     :package *package*
     :name :tcl2cl
     :run-contexts (find-symbol "WITH-SUMMARY-CONTEXT" :lisp-unit2))))
