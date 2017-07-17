default: up

up: 
	docker-compose -f compose.yml up

clean: 
	docker-compose -f compose.yml down -v --remove-orphans

db:
	docker run --name ucd-db -e MYSQL_ROOT_PASSWORD=admin -e MYSQL_USER=jpetstore -e MYSQL_PASSWORD=jppwd -e MYSQL_DATABASE=jpetstore \
		-d -p 3306:3306 mysql:latest

tomcat:
	docker run --name ucd-tomcat -d -p 8881:8080 tomcat:7.0-alpine
