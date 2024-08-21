#!/bin/bash

# Apply database migrations
echo "Apply database migrations"
python manage.py migrate

# Apply seeds
echo "Apply seeds data"
python manage.py loaddata seeds/*

# Start server
echo "Starting server"
python manage.py runserver 0.0.0.0:8000