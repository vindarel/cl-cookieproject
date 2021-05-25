(defpackage :{{ cookiecutter.project_name }}-tests
  (:use :common-lisp
        :lisp-unit
        :{{ cookiecutter.project_name }})
  (:export #:run))


(in-package :{{ cookiecutter.project_name }}-tests)
(defun run ()
  "Run all unit tests for {{ cookiecutter.project_name }}"
  (lisp-unit:run-tests :all :{{ cookiecutter.project_name }}-tests))
