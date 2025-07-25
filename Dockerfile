FROM nginx:stable-alpine

LABEL maintainer="WebTrit Docker Maintainers <docker-maint@webtrit.com>"

COPY nginx/ /etc/nginx/


ENV WEBTRIT_CORE_HOST=""
