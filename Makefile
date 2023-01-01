SHELL=/bin/bash

.PHONY: build
build:
	docker build -t sql-migrate-git -f build/Dockerfile .
