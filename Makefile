COMPOSE = docker compose
DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml
VOLUMES = ./volumes

# Define targets

all: build mariadb wordpress nginx

mariadb:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d  mariadb

wordpress:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE)  up  -d wordpress

nginx:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) up  -d nginx

build: 	| $(VOLUMES)
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d 

down:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

restart:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) restart

logs:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) logs -f

stop : 
	@$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop

start : 
	@$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) start


$(VOLUMES):
	@echo Creating Volumes
	@mkdir -p $(VOLUMES)

clean:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) down --rmi all --volumes
	
fclean: clean
	@docker system prune -af 
	@sudo rm -rf volumes/

re: fclean all




.PHONY: all build up down restart logs clean re fclean



