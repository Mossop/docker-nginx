#! /bin/sh

while inotifywait -e modify -e delete -e create -e move -r /etc/nginx >/dev/null; do
  echo "Reloading nginx..."
  nginx -s reload
done
