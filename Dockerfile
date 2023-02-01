FROM jwilder/nginx-proxy:1.2.0

LABEL maintainer "Dschinghis Kahn"

HEALTHCHECK CMD wget --output-document=/dev/null localhost:80 2>&1 | grep connected && wget --output-document=/dev/null localhost:443 2>&1 | grep connected || exit 1
