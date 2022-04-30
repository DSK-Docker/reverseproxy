FROM jwilder/nginx-proxy

LABEL maintainer "Dschinghis Kahn"

HEALTHCHECK CMD wget --quiet --output-document=/dev/null localhost:80 && wget --quiet --output-document=/dev/null localhost:443 || exit 1
