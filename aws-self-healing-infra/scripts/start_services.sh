#!/bin/bash

echo "Starting microservices..."

(cd microservices/users/src && rails s -d)
(cd microservices/orders/src && npm start)
(cd microservices/products/src && gunicorn app:app -b 0.0.0.0:8000)

echo "Microservices started."
