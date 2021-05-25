
(load "{{ cookiecutter.project_name}}.asd")
(load "{{ cookiecutter.project_name}}-tests.asd")

(ql:quickload "{{ cookiecutter.project_name}}-tests")

(in-package :{{ cookiecutter.project_name}}-tests)

(uiop:quit (if (run-all-tests) 0 1))
