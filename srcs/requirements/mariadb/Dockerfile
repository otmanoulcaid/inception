FROM debian:stable-slim

RUN apt update -y && apt install mariadb-server -y

COPY tools/script.sh /script.sh

RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]
