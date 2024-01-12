(in-package :asdf-user)

(defsystem "{{ cookiecutter.project_name }}"
  :author "{{ cookiecutter.author }} <{{ cookiecutter.email }}>"
  :version "{{ cookiecutter.version }}"
  :license "{{ cookiecutter.licence }}"
  :description "{{ cookiecutter.description }}"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")

  ;; Dependencies.
  :depends-on (:clingon)

  ;; Project stucture.
  :serial t
  :components ((:module "src"
                        :serial t
                        :components ((:file "packages")
                                     (:file "{{ cookiecutter.project_name }}"))))

  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "{{ cookiecutter.project_name }}"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "{{ cookiecutter.project_name}}:main")
