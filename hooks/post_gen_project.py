"""Post-project generation hooks"""

if __name__ == '__main__':
    """Initialize a git repository."""

    import subprocess
    subprocess.call(('git', 'init'))

    print("Project {{ cookiecutter.project_name }} created succesfully.")
