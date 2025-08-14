.PHONY: lints.ci test.unit

# Target to run lints
lints.ci:
	@echo "Running pylint..."
	poetry run pylint src/ tests/ || true
	@echo "Running flake8..."
	poetry run flake8 src/ tests/
