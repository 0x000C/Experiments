run:
	docker compose up -d

monitor:
	docker compose logs -f

stop:
	docker compose down

clean:
	docker compose down --rmi all --volumes

restart: stop run
