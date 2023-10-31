#!/bin/bash

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install Django
pip install Django

# Create a new Django project named 'lifty'
django-admin startproject lifty

# Navigate into the project directory
cd lifty

# Create two Django apps: 'users' and 'experiments'
python3 manage.py startapp users
python3 manage.py startapp experiments

# Run migrations for each app
python3 manage.py makemigrations users
python3 manage.py migrate users
python3 manage.py makemigrations experiments
python3 manage.py migrate experiments

# Run the server
python3 manage.py runserver
