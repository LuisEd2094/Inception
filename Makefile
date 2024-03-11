

NAME        = 	inception

NGINX		= ./srcs/requirements/nginx/Dockerfile

all: $(NAME)



$(NAME): Makefile $(NGINX)
	@docker build -t nginx ./srcs/requirements/nginx/
	@echo $(NGINX)
#@docker run -d -p 8080:80 nginx

fclean:
	@docker system prune -af 

re: fclean all	

.PHONY: all fclean re


