
## How to use Roswell to build and share binaries

From the project root:

Run as a script:

    chmod +x roswell/{{ cookiecutter.project_name}}.ros
    ./roswell/{{ cookiecutter.project_name }}.ros

Build a binary:

    ros build roswell/{{ cookiecutter.project_name}}.ros

and run it:

    ./roswell/{{ cookiecutter.project_name}}

Or install it in ~/.roswell/bin:

    ros install roswell/{{ cookiecutter.project_name}}.ros

It creates the binary in ~/.roswell/bin/
Run it:

    ~/.roswell/bin/{{ cookiecutter.project_name}} [name]~&

Your users can install the script with ros install {{ cookiecutter.username }}/{{ cookiecutter.project_name }}

Use `+Q` if you don't have Quicklisp dependencies to save startup time.
Use `ros build --disable-compression` to save on startup time and loose on application size.


## See

- https://github.com/roswell/roswell/wiki/
- https://github.com/roswell/roswell/wiki/Reducing-Startup-Time
