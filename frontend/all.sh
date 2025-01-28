#!/bin/bash

if [ -z "${BACKEND_HOST}" ]; then
  echo "Input BACKEND_HOST is missing"
  exit 1
fi

if [ -z "${BACKEND_PORT}" ]; then
  echo "Input BACKEND_PORT is missing"
  exit 1
fi

# Substitute environment variables in nginx.conf and write to /etc/nginx/nginx.conf
envsubst < /opt/nginx.conf > /etc/nginx/nginx.conf

# Start Nginx in the foreground
nginx -g 'daemon off;'

