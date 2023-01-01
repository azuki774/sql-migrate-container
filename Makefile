SHELL=/bin/bash

.PHONY: build start start-db stop stop-db
build:
	docker build -t sql-migrate-git -f build/Dockerfile .

start:
	docker compose -f deployment/compose-local.yml up

start-db:
	docker compose -f deployment/compose-local-db.yml up -d

stop:
	docker compose -f deployment/compose-local.yml down

stop-db:
	docker compose -f deployment/compose-local-db.yml down
