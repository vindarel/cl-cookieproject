(in-package :{{ cookiecutter.project_name }})

;; Define your project functionality here...

(defun main (&optional (name "{{ cookiecutter.author }}"))
  (format t "Hello ~a from ~a!~&" name "{{ cookiecutter.project_name }}"))
