# Python-Project-Skeleton

## Setting up development environment

Assuming you have [pyenv](https://github.com/pyenv/pyenv) and [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) installed, execute the following commands:

```bash
pyenv install 3.11.4
pyenv virtualenv 3.11.4 project_name-3.11
pyenv local project_name-3.11
make setup
```

**Note #1:** You may need to have some dependencies installed to be able to build the Python version mentioned above, in
Ubuntu you can do so by running `make apt-python-requirements`.

**Note #2:** After you create a new project based on this template you may want to customize the `.in` files and run the following:

```bash
pip install pip-tools
make requirements-dev.txt
```
