# DevTools

lock:
	poetry lock
.PHONY: lock

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
