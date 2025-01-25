YAML_PATH = ./srcs/docker-compose.yml

all : up

up :
	docker compose -f $(YAML_PATH) $@
	
ps :
	docker compose -f $(YAML_PATH) $@

down :
	docker compose -f $(YAML_PATH) $@

stop :
	docker compose -f $(YAML_PATH) $@

start :
	docker compose -f $(YAML_PATH) $@

restart :
	docker compose -f $(YAML_PATH) $@

clean : down

fclean :
	docker compose -f $(YAML_PATH) down -v
