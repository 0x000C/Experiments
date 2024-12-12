build:
	docker compose build

run:
	docker compose up --force-recreate

stop:
	docker compose down

clean:
	docker compose down --rmi all --volumes

restart: clean build run
