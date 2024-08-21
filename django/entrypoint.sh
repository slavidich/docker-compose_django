#!/bin/sh
cd G4
rm -rf static/*
python manage.py collectstatic
python manage.py migrate
exec gunicorn G4.wsgi:application --bind 0.0.0.0:8000
