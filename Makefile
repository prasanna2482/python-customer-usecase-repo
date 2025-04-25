# Makefile

all: setup lints.ci test.unit build
setup:
	pip install -r requirements.txt

.PHONY: lints.ci test.unit

# Target to run lints
lints.ci:
	@echo "Running pylint..."
	pylint src/ tests/
	@echo "Running flake8..."
	flake8 src/ tests/

# Target to run unit tests
test.unit:
	@echo "Running unit tests..."
	pytest --maxfail=1 --disable-warnings

build:
	python3 setup.py sdist bdist_wheel
