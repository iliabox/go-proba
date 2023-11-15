# Makefile

DOCKER_IMAGE_NAME := my-golang-app

.PHONY: build
build:
	docker build -t $(DOCKER_IMAGE_NAME) .

.PHONY: run
run:
	docker run -it --rm -p 8080:8080 $(DOCKER_IMAGE_NAME)

.PHONY: bash
bash:
	docker run -it --rm -v $(pwd):/app $(DOCKER_IMAGE_NAME) bash

