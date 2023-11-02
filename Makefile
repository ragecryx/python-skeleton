SRC ?= src

.PHONY: setup
setup:
	pip install -r requirements.txt
	pre-commit install

.PHONY: setup-dev
setup-dev:
	pip install -r requirements.txt -r requirements-dev.txt
	pre-commit install

.PHONY: format
format:
	pre-commit run --all-files

.PHONY: lint
lint:
	ruff check $(SRC)/

# Python building dependencies for Ubuntu:
.PHONY: apt-python-requirements
apt-python-requirements:
	sudo apt install build-essential gdb lcov pkg-config \
		libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev \
		liblzma-dev libncurses5-dev libreadline6-dev libsqlite3-dev \
		libssl-dev lzma lzma-dev tk-dev uuid-dev zlib1g-dev

requirements.txt: requirements.in
	pip-compile requirements.in

requirements-dev.txt: requirements-dev.in
	pip-compile requirements-dev.in

.PHONY: clean
clean:
	find ./$(SRC) -type f -name "*.py[co]" -delete -or -type d -name "__pycache__" -delete

