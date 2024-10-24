build:
	docker build -t spmetro .

run:
	docker run --rm -d -p 8000:8000 --name spmmetro-container spmetro

stop:
	docker stop spmmetro-container

bash:
	docker exec -it spmmetro-container bash

refresh:
	docker cp ./ spmmetro-container:/app

buildrun: build run

restart: stop buildrun

runlocal:
	bash exec.sh