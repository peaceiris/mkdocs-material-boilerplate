# Start with pipenv

> Pipenv is a tool that aims to bring the best of all packaging worlds (bundler, composer, npm, cargo, yarn, etc.) to the Python world.

- [pypa/pipenv: Python Development Workflow for Humans.](https://github.com/pypa/pipenv)



## Install all packages

```sh
pipenv sync   # Installs all packages specified in Pipfile.lock.
pipenv shell  # Spawns a shell within the virtualenv.
```



## Run MkDocs with invoke

### invoke

> Invoke is a Python (2.7 and 3.4+) library for managing shell-oriented subprocesses and organizing executable Python code into CLI-invokable tasks. It draws inspiration from various sources (make/rake, Fabric 1.x, etc) to arrive at a powerful & clean feature set.

- [pyinvoke/invoke: Pythonic task management & command execution.](https://github.com/pyinvoke/invoke)

### `mkdocs serve`

Run `mkdocs serve` and open browser automatically.

```sh
inv serve
```

Serving on [localhost:8000](http://localhost:8000)

```sh
# set ip and port
inv serve --addr='localhost:5000'
```

### `mkdocs build`

```sh
inv build
```

### `mkdocs gh-deploy`

```sh
inv deploy
```

### Show all tasks

```sh
$ inv --list
Available tasks:

  build    Build site
  deploy   Deploy to GitHub Pages
  serve    Serve site and open browser
```

Show task help.

```sh
$ inv serve --help
Usage: inv[oke] [--core-opts] serve [--options] [other tasks here ...]

Docstring:
  Serve site and open browser

Options:
  -a STRING, --addr=STRING   IP address and port to serve documentation locally (default: localhost:8000)
```

Tasks are defined by [tasks.py](https://github.com/peaceiris/mkdocs-material-boilerplate/blob/master/tasks.py)



## `pipenv run`

pipenv task are also defined by [Pipfile](https://github.com/peaceiris/mkdocs-material-boilerplate/blob/master/Pipfile)

```sh
pipenv run version    # mkdocs --version
pipenv run help       # mkdocs --help
pipenv run serve      # mkdocs serve
pipenv run build      # mkdocs build
pipenv run gh-deploy  # mkdocs gh-deploy
```
