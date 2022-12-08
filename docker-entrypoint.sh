#!/bin/bash

# Apply database migrations
echo "Apply database migrations"
manage migrate

# Start server
echo "Starting server"
manage runserver 0.0.0.0:8000