

NAME        = 	inception

NGINX		= ./srcs/requirements/nginx/Dockerfile

all: $(NAME)



$(NAME): Makefile $(NGINX)
	@docker build -t nginx ./srcs/requirements/nginx/
	@docker run -d -p 8080:443 nginx

fclean:
	@docker system prune -af 

re: fclean all	

.PHONY: all fclean re


