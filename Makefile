test:
	poetry run pytest tests

build:
	poetry build

check:
	poetry run mypy pyfabrik --ignore-missing-imports
	poetry run mypy tests --ignore-missing-imports
	poetry run black --check pyfabrik
	poetry run black --check tests

format:
	poetry run black pyfabrik
	poetry run black tests

clean:
	find . -name '__pycache__' -delete
	find . -name '*.py[co]' -delete
	rm -fr dist