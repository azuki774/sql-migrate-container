SHELL=/bin/bash

.PHONY: build start start-db stop stop-db
build:
	docker build -t sql-migrate-git -f build/Dockerfile .

start:
	- docker network create sql-migrate-git-network
	docker compose -f deployment/compose-local.yml up

start-db:
	- docker network create sql-migrate-git-network
	docker compose -f deployment/compose-local-db.yml up -d

stop:
	docker compose -f deployment/compose-local.yml down
	- docker network rm sql-migrate-git-network

stop-db:
	docker compose -f deployment/compose-local-db.yml down
	- docker network rm sql-migrate-git-network
