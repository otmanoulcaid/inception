#!/bin/bash


mkdir -p /etc/nginx/ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/inception.key \
    -out /etc/nginx/ssl/inception.crt \
    -subj "/C=MO/ST=KH/O=42/OU=42/CN=$USER42.42.fr"

cat << EOL > /etc/nginx/nginx.conf
worker_processes 1;

events {
    worker_connections 1024;
}

http {
    include /etc/nginx/mime.types;

    server {
        listen 443 ssl;
        root /var/www/html;
        server_name $USER42.42.fr;
        index index.php;

        ssl_certificate /etc/nginx/ssl/inception.crt;
        ssl_certificate_key /etc/nginx/ssl/inception.key;
        ssl_protocols TLSv1.3;

        location ~ \.php$ {
            include snippets/fastcgi-php.conf;
            fastcgi_pass wordpress:9000;
        }
    }
}
EOL

nginx -g "daemon off;"