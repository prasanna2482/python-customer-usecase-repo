# Makefile
all: lints.ci test.unit
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
