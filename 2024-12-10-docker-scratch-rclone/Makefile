build:
	docker compose build

run:
	docker compose up -d --force-recreate

monitor:
	docker compose logs -f

stop:
	docker compose down

clean:
	docker compose down --rmi all --volumes

restart: clean build run
