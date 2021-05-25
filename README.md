cookiecutter-cl
===============
A [cookiecutter](https://github.com/audreyr/cookiecutter) template for Common Lisp projects

Forked from [cookiecutter-cl](https://github.com/hbristow/cookiecutter-cl).



Features
--------

- Canonical Common Lisp project structure
- ASDF system definitions
- Run project from sources
- Build a binary
- Choose your Lisp implementation
- Test suite using [lisp-unit](http://www.cs.northwestern.edu/academics/courses/325/readings/lisp-unit.html) and CI using [travis](https://travis-ci.org/)
- Standardized use of string designators
- BSD licenced by default


Usage
-----

Create a new project. You'll be prompted to provide some basic
information about your new project, which will then be auto-generated
in the current working directory:

```bash
$ pip install cookiecutter
$ cookiecutter https://github.com/vindarel/cl-cookieproject
project_name [cookie-lisp-project]:
repo_name [cookie-lisp-project]:
description []: A test project
version [0.0.1]:
year [1984]:
author [CL User]: me
email [me@mail.com]:
username [mme]:
branch [master]:
remote [origin]:
Initialised empty Git repository in /home/vince/bacasable/lisp-projects/cookie-lisp-project/.git/
Switched to a new branch 'master'
```

Run it straight away:

```bash
$ cd cookie-lisp-project
$ make run
rlwrap sbcl --load run.lisp
This is SBCL 2.0.10, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
To load "cffi":
  Load 1 ASDF system:
    cffi
; Loading "cffi"
.
To load "cookie-lisp-project":
  Load 1 ASDF system:
    cookie-lisp-project
; Loading "cookie-lisp-project"
[package cookie-lisp-project]
Hello from cookie-lisp-project!
*
```

You can see the `Hello` from the `main` function, and we are given a Lisp REPL.

Build an executable:

```bash
$ make build
[…]
[saving current Lisp image into /home/vince/bacasable/lisp-projects/cookie-lisp-project/cookie-lisp-project:
writing 0 bytes from the read-only space at 0x50000000
writing 736 bytes from the static space at 0x50100000
writing 37060608 bytes from the dynamic space at 0x1000000000
writing 2154496 bytes from the immobile space at 0x50200000
writing 13910016 bytes from the immobile space at 0x52000000
done]

$ ./cookie-lisp-project
Hello from cookie-lisp-project!
```
