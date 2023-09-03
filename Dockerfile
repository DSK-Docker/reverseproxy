FROM jwilder/nginx-proxy:1.3.1

LABEL maintainer "Dschinghis Kahn"

RUN echo "client_max_body_size 1G;" > /etc/nginx/conf.d/client_max_body_size.conf

HEALTHCHECK CMD wget --output-document=/dev/null localhost:80 2>&1 | grep connected && wget --output-document=/dev/null localhost:443 2>&1 | grep connected || exit 1
