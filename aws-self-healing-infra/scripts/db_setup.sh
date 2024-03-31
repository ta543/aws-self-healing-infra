#!/bin/bash

echo "Initializing databases for microservices..."

(cd microservices/users/src && rails db:setup)
(cd microservices/orders/src && npm run db:setup)
(cd microservices/products/src && python manage.py migrate)

echo "Database initialization complete."
