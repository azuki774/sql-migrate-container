SHELL=/bin/bash

.PHONY: build start
build:
	docker build -t sql-migrate-git -f build/Dockerfile .

start:
	docker compose -f deployment/compose-local.yml up
