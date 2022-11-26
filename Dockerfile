FROM nginx:alpine

RUN apk add --no-cache inotify-tools

COPY 30-watch-config.sh /docker-entrypoint.d
COPY watch.sh /watch.sh
COPY nginx.conf /etc/nginx
COPY default.conf /etc/nginx

RUN mkdir /etc/nginx/generated.d
