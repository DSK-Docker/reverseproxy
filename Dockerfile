FROM jwilder/nginx-proxy

LABEL maintainer "Dschinghis Kahn"

HEALTHCHECK CMD wget --quiet --output-document=/dev/null localhost:80 2>&1 | grep connected && wget --quiet --output-document=/dev/null localhost:443 2>&1 | grep connected || exit 1
