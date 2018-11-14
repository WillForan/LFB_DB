.PHONY env example:

env:
	pip install --user pipenv
	pipenv install anosql bottle
lite.db: sql/schema/schema.sql
	sqlite3 lite.db < sql/schema/schema.sql

example: make_example.bash
	./make_example.bash
