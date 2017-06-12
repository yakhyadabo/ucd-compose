default: up

up: 
	docker-compose -f compose.yml up

clean: 
	docker-compose -f compose.yml down -v --remove-orphans

