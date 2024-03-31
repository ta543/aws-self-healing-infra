#!/bin/bash

# Base log directory
LOG_DIR="/var/log/microservices"

# Microservice directories
declare -a services=("users" "orders" "products")

echo "Starting log setup..."

# Creates a base log directory if it doesn't exist
mkdir -p "$LOG_DIR"

for service in "${services[@]}"; do
    echo "Setting up logs for $service..."
    
    # Creates a specific log directory for each microservice
    mkdir -p "$LOG_DIR/$service"

    touch "$LOG_DIR/$service/general.log"
    

    echo "Log setup completed for $service."
done

echo "All log setups are completed."
