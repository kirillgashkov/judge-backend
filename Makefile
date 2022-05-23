# DevTools

lock:
	poetry lock
.PHONY: lock

lint:
	poetry run autoflake --check -i -r --remove-all-unused-imports .
	poetry run isort --check --atomic .
	poetry run black --check .
	poetry run mypy .

format:
	poetry run autoflake -i -r --remove-all-unused-imports .
	poetry run isort --atomic .
	poetry run black .

# Docker

docker-build:
	docker compose -f compose.dev.yaml build
.PHONY: docker-build

docker-up:
	docker compose -f compose.dev.yaml up
.PHONY: docker-up

docker-upd:
	docker compose -f compose.dev.yaml up -d
.PHONY: docker-upd

docker-down:
	docker compose -f compose.dev.yaml down
.PHONY: docker-down

docker-downv:
	docker compose -f compose.dev.yaml down -v
.PHONY: docker-downv

docker-logs:
	docker compose -f compose.dev.yaml logs
.PHONY: docker-logs
