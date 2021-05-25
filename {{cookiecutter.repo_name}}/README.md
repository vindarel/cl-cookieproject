# {{ cookiecutter.project_name }}

{{ cookiecutter.description }}

# Usage

Run from sources:

    make run
    # aka sbcl --load run.lisp

choose your lisp:

    LISP=ccl make run

or build and run the binary:

```
$ make build
$ ./{{ cookiecutter.project_name }}
Hello from {{ cookiecutter.project_name }}
```


---

Licence: BSD
