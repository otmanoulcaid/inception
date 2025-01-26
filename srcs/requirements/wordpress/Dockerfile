FROM debian:stable-slim

RUN apt update -y && 
apt install php8.2 -y \
php8.2-fpm -y && \
apt install php8.2-mysql -y && \
apt install curl -y && \
apt install mariadb-client -y 

COPY tools/script.sh /script.sh

RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]
