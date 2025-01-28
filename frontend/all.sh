if [ -z "${BACKEND_HOST}" ]; then
  echo Input BACKEND_HOST is missing
  exit 1
fi

if [ -z "${BACKEND_PORT}" ]; then
  echo Input BACKEND_PORT is missing
  exit 1
fi

cat /opt/nginx.conf | envsubst >/etc/nginx/nginx.conf
nginx -g 'daemon off;'

