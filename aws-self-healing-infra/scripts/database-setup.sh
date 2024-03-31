#!/bin/bash

# Path to microservices
MICROSERVICES_PATH="microservices"

# Microservice directories
declare -a services=("users" "orders" "products")

echo "Starting database setup..."

for service in "${services[@]}"; do
    echo "Setting up database for $service..."
    # Navigate to the microservice directory
    cd "$MICROSERVICES_PATH/$service/src"
    
    # Check if Rails service and setup database
    if [ -f "Gemfile" ] && grep -q "rails" "Gemfile"; then
        bundle check || bundle install
        rails db:create
        rails db:migrate
    fi
    
    echo "Database setup completed for $service."
done

echo "All database setups are completed."
