.PHONY env:
	pip install --user pipenv
	pipenv install anosql bottle
lite.db:
	sqlite3 lite.db < sql/schema/schema.sql
