

NAME        = 	inception



all: $(NAME)



$(NAME): 
	@docker build -t nginx ./NGINX
	@docker run -d -p 8080:80 nginx

	
.PHONY: stop


