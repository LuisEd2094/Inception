COMPOSE = docker-compose
DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml

# Define targets

all: build

build:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) build
up:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d

down:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

restart:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) restart

logs:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) logs -f

clean:
	$(COMPOSE) -f $(DOCKER_COMPOSE_FILE) down --rmi all --volumes
fclean: clean
	@docker system prune -af 

re: fclean all
# Additional targets as needed...

.PHONY: all build up down restart logs clean re fclean



#NAME        = 	inception

#NGINX		= ./srcs/requirements/nginx/Dockerfile

#all: $(NAME)

#mariadb:
#	@docker build -t mariadb ./srcs/requirements/mariadb/
#nginx:
#	@docker build -t nginx ./srcs/requirements/nginx/
#@docker run -d -p 8080:443 nginx


#$(NAME): mariadb nginx Makefile


#fclean:
#	@docker system prune -af 

#re: fclean all	

#.PHONY: all fclean re mariadb nginx


