#!/bin/bash
# Start the Django server
python manage.py runserver

# Create the database schema
python manage.py makemigrations
python manage.py migrate

# Collect static files
python manage.py collectstatic