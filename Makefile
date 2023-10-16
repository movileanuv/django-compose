.PHONY: all requirements clean

requirements:
	poetry export --with dev > requirements/development.txt
	poetry export > requirements/production.txt

migrate:
	docker compose exec web python src/manage.py migrate
