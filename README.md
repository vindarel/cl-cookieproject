# cl-cookieproject

A [cookiecutter](https://github.com/audreyr/cookiecutter) template for Common Lisp projects featuring:

- Canonical Common Lisp project structure, a ready-to-use project with an entry point and unit tests.
- Run project from sources
- Build a binary
- and choose your Lisp implementation
- Test suite using [Fiveam](https://common-lisp.net/project/fiveam/docs/)
  - a [travis](https://travis-ci.org/) CI configuration file (untested)
- [Roswell](https://github.com/roswell/roswell/) recipe to build, install and share a binary
- example use of command line arguments
  (`uiop:command-line-arguments`). Proper parsing is left to do with a
  third-party library ([clingon](https://github.com/dnaeon/clingon), unix-opts, defmain, adopt…).

We are also shaping out a template for a web project, see [cl-cookieweb](https://github.com/vindarel/cl-cookieweb).

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
username [me]:
Initialised empty Git repository in /home/vince/bacasable/lisp-projects/cookie-lisp-project/.git/
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

$ ./cookie-lisp-project me
Hello me from cookie-lisp-project!

$ ./cookie-lisp-project -h
Usage:

  cookie-lisp-project [name]
```

Build it with Roswell:

```
$ ros build roswell/cookie-lisp-project.ros
```

A binary is created in the `roswell` directory.

Your users can install the application with:

```
$ ros install github_username/project_name
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
- [ ] better guess the author
- [ ] include a documentation system
- [X] [web project skeleton](https://github.com/vindarel/cl-cookieweb)


## See also

- https://github.com/fukamachi/cl-project
  - one-package per file style (called "modern" but I find it too cumbersome to use)
  - uses the Rove test system (and I think it is not ready, see [this discussion](https://github.com/LispCookbook/cl-cookbook/issues/297) and its own issues)
  - less integration (no recipe to build binaries, use CLI args or use Roswell). Pure CL, doesn't need Cookiecutter (Python).
- https://github.com/triclops200/quickapp and [quickapp-cli](https://github.com/triclops200/quickapp-cli)
  - last commit 2016 / 2015
    - its `internal-quit` in app-utils.lisp should be `uiop:quit`
  - uses buildapp: kind of old and not needed now with `asdf:make` or Roswell? (proove me wrong)
  - includes an args parsing utility (it should probably use a more complete library though)
- https://www.xach.com/lisp/quickproject/
  - doesn't include a test definition
  - simple, nothing fancy.
- https://github.com/40ants/cl-project-with-docs
  - uses Sphinx and reStructured text to render nice and readable HTML documentation.
  - automatic gh-pages
  - includes tests, CI (Travis), Roswell
  - needs Sphinx (Python) and cl-launch.
  - 2018: I suspect the author has now another favourite documentation generator (MGLPAX, 40ants/doc) and might not update much this skeleton.

---

Acknowledgement: we forked [cookiecutter-cl](https://github.com/hbristow/cookiecutter-cl).
