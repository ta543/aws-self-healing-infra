#!/bin/bash

echo "Running database migrations for microservices..."

(cd microservices/users/src && rails db:migrate)
(cd microservices/orders/src && npm run db:migrate)
(cd microservices/products/src && python manage.py migrate)

echo "Database migrations complete."
