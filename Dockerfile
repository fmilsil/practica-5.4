FROM ubuntu:24.04

LABEL AUTHOR="Francisco Milán Siles"
LABEL DESCRIPTION="Prueba de instalación"

ENV WORDPRESS_DB_HOST=mysql


RUN apt update && \
    apt install nginx -y && \
    apt install git -y && \
    rm -rf /var/lib/apt/list/*

RUN git clone https://github.com/josejuansanchez/2048 /app && \
    mv /app/* /var/www/html/

EXPOSE 80

CMD [ "nginx","-g", "daemon off;" ]