"
Usage:

rlwrap sbcl --load run.lisp

This loads the project's asd, loads the quicklisp dependencies, and
calls the main function.

Then, we are given the lisp prompt.

If you don't want to land in the REPL, you can (quit) below or call lisp with the --non-interactive flag.

Another solution to run the app is to build and run a binary (see README).
"

(load "{{ cookiecutter.project_name}}.asd")

(ql:quickload "{{ cookiecutter.project_name}}")

(in-package :{{ cookiecutter.project_name}})
(handler-case
    (main)
  (error (c)
    (format *error-output* "~&An error occured: ~a~&" c)
    (uiop:quit 1)))
