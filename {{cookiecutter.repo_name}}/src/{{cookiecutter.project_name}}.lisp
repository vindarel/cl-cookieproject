(in-package :{{ cookiecutter.project_name }})

(defun cli/options ()
  "Returns a list of options for our main command"
  (list
   (clingon:make-option
    :flag
    :description "verbose"
    :short-name #\v
    :initial-value nil
    :key :verbose)
   ))

(defun cli/handler (cmd)
  "The top-level handler"
  (declare (ignorable args verbose))
  (let ((args      (clingon:command-arguments cmd))
        (verbose   (clingon:getopt cmd :verbose)))
    (when (null args)
      (clingon:print-usage-and-exit cmd t))
    ;; insert commands here
  ))
    
(defun cli/command ()
  (clingon:make-command
   :name "{{ cookiecutter.project_name }}"
   :description "{{ cookiecutter.description }}"
   :version "{{ cookiecutter.version }}"
   :license "All rights reserved"
   :authors '("{{ cookiecutter.author }} <{{ cookiecutter.email }}>")
   :usage "[OPTIONS]"
   :options (cli/options)
   :handler #'cli/handler))

(defun %main (&rest argv)
  (setf clingon:*default-help-flag*
    (clingon:make-option 
     :flag
     :description "display usage information and exit"
     :long-name "help"
     :short-name #\h
     :key :clingon.help.flag))
  (let ((app (cli/command)))
    (clingon:run app argv)))
        
(defun main ()
  "Entry point for the executable.
  Reads command line arguments."
  ;; uiop:command-line-arguments returns a list of arguments (sans the script name).
  ;; We defer the work of parsing to %main because we call it also from the Roswell script.
  (apply #'%main (uiop:command-line-arguments)))
