(defsystem "{{ cookiecutter.project_name }}-tests"
  :description "Test suite for the {{ cookiecutter.project_name }} system"
  :author "{{ cookiecutter.author }} <{{ cookiecutter.email }}>"
  :version "{{ cookiecutter.version }}"
  :depends-on (:{{ cookiecutter.project_name }} :lisp-unit)
  :license "BSD"
  :serial t
  :components ((:module "tests"
                        :serial t
                        :components ((:file "packages")
                                     (:file "test-{{ cookiecutter.project_name }}")))))
