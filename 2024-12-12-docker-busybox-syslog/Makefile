run:
	docker compose up -d
	sleep 1
	logger -T -n 127.0.0.1 -P 514 "Test syslog message: hello from logger"

monitor:
	docker compose logs -f

stop:
	docker compose down

clean:
	docker compose down --rmi all --volumes

restart: stop run
