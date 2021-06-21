# cl-cookieproject

A [cookiecutter](https://github.com/audreyr/cookiecutter) template for Common Lisp projects featuring:

- Canonical Common Lisp project structure, a ready-to-use project with an entry point and unit tests.
- Run project from sources
- Build a binary
- and choose your Lisp implementation
- Test suite using [Fiveam](https://common-lisp.net/project/fiveam/docs/)
  - a [travis](https://travis-ci.org/) CI configuration file (untested)
- [Roswell](https://github.com/roswell/roswell/) recipe to build, install and share a binary


## Usage

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

### Cookiecutter options

You can use command line options: https://cookiecutter.readthedocs.io/en/1.7.2/advanced/cli_options.html

- `--no-input`: do not prompt for parameters and only use cookiecutter.json file content
- ` --replay`: do not prompt for parameters and only use information entered previously
- ` -f, --overwrite-if-exists`: overwrite the contents of the output directory if it already exists
- ` -s, --skip-if-file-exists`: skip the files in the corresponding directories if they already exist
- ` -o, --output-dir`: where to output the generated project dir into
- ` --config-file`: user configuration file


## TODOs

- [ ] more CI setup
- [ ] build a .deb (and .rpm)
- [ ] better guess author
- [X] [web project skeleton](https://github.com/vindarel/cl-cookieweb)

---

Acknowledgement: we forked [cookiecutter-cl](https://github.com/hbristow/cookiecutter-cl).
