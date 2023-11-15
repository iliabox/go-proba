# Makefile

up:
	docker build -t golang-app .

open:
	docker run -it --rm -v $(pwd):/app -p 8080:8080 golang-app

run:
	docker run -it --rm -v $(pwd):/app golang-app go run main.go

