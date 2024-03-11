

NAME        = 	inception



all: $(NAME)



$(NAME): Makefile
	@docker build -t nginx ./srcs/requirements/nginx/
#@docker run -d -p 8080:80 nginx

fclean:
	@docker system prune -af 

re: fclean all	

.PHONY: all fclean re


