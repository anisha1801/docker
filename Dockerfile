FROM ubuntu
RUN apt update -y
RUN apt install nginx -y
ENV NGINX_PATH="var/www/html"
COPY index.html $NGINX_PATH
CMD ["nginx", "-g" ,"daemon off;"]
