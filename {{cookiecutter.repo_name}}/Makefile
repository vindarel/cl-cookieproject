LISP ?= sbcl

all: test

run:
	rlwrap $(LISP) --load run.lisp

build:
	$(LISP)	--non-interactive \
		--load {{ cookiecutter.project_name}}.asd \
		--eval '(ql:quickload :{{ cookiecutter.project_name}})' \
		--eval '(asdf:make :{{ cookiecutter.project_name}})'
