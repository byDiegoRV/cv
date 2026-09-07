#!/bin/sh
set -e

PORT="${PORT:-10000}"

sed "s/PORT_PLACEHOLDER/${PORT}/g" \
  /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

echo "Sirviendo el CV en el puerto ${PORT}"
exec nginx -g "daemon off;"
