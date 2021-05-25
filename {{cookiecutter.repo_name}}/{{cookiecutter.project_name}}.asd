(in-package :asdf-user)

(defsystem "{{ cookiecutter.project_name }}"
  :description "{{ cookiecutter.description }}"
  :author "{{ cookiecutter.author }} <{{ cookiecutter.email }}>"
  :version "{{ cookiecutter.version }}"
  :license "BSD"
  :serial t

  ;; dependencies
  :depends-on ()
  :components ((:module "src"
                        :serial t
                        :components ((:file "packages")
                                     (:file "{{ cookiecutter.project_name }}")))))
