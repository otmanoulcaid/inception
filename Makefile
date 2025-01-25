YAML_PATH = ./srcs/docker-compose.yml

all : up

up :
	docker compose -f $(YAML_PATH) $@

down :
	docker compose -f $(YAML_PATH) $@

restart :
	docker compose -f $(YAML_PATH) $@
