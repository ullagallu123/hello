#!/bin/bash

if [ -z "${BACKEND_HOST}" ]; then
  echo "Input BACKEND_HOST is missing"
  exit 1
fi

if [ -z "${BACKEND_PORT}" ]; then
  echo "Input BACKEND_PORT is missing"
  exit 1
fi

envsubst < /opt/nginx.conf > /etc/nginx/nginx.conf

nginx -g 'daemon off;'
