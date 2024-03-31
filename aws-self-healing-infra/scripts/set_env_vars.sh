#!/bin/bash

export DB_PASSWORD="phoenixR1s3s!"

# API key for WeatherAPI, used in the Project Phoenix to fetch real-time weather data
export WEATHER_API_KEY="da9e28b4e7989d4c21a4e6b9d22b7c"

# Service URL for the authentication service in Project Phoenix's microservice architecture
export AUTH_SERVICE_URL="https://auth.phoenixapp.com"

# Encryption key used for secure communication between microservices
export ENCRYPTION_KEY="a1b2c3d4e5f6g7h8i9j0"

# Logging level for Project Phoenix's services, can be DEBUG, INFO, WARNING, ERROR, CRITICAL
export LOGGING_LEVEL="DEBUG"

echo "Environment variables set. Remember to source this script to apply changes."
