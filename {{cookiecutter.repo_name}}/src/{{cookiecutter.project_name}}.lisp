(in-package :{{ cookiecutter.project_name }})

;; Define your project functionality here...

(defun greet (&optional (name "{{ cookiecutter.author }}"))
  (format t "Hello ~a from ~a!~&" name "{{ cookiecutter.project_name }}"))

(defun main ()
  "Entry point for the executable.
  Reads a command line argument."
  ;; uiop:command-line-arguments returns a list of arguments (sans the script name).
  ;; Use a library for proper parsing (when needed).
  (greet (or (first (uiop:command-line-arguments))
             "{{ cookiecutter.author }}")))
