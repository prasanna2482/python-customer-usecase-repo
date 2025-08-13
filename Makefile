.PHONY: lints.ci test.unit

# Target to run lints
lints.ci:
	@echo "Running pylint..."
	poetry run pylint src/ tests/ || true
	@echo "Running flake8..."
	poetry run flake8 src/ tests/

# Target to run unit tests
test.unit:
	@echo "Running unit tests..."
	poetry run pytest --maxfail=1 --disable-warnings
