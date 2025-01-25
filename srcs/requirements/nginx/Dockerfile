FROM debian:stable-slim

RUN apt update && apt install nginx -y

COPY tools/script.sh /script.sh

RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]
