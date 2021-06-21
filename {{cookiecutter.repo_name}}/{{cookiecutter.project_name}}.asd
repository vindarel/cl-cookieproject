(in-package :asdf-user)

(defsystem "{{ cookiecutter.project_name }}"
  :description "{{ cookiecutter.description }}"
  :author "{{ cookiecutter.author }} <{{ cookiecutter.email }}>"
  :version "{{ cookiecutter.version }}"
  :license "{{ cookiecutter.licence }}"
  :serial t

  ;; dependencies
  :depends-on ()

  ;; build a binary:
  :build-operation "program-op"
  :entry-point "{{ cookiecutter.project_name}}:main"

  :components ((:module "src"
                        :serial t
                        :components ((:file "packages")
                                     (:file "{{ cookiecutter.project_name }}")))))
