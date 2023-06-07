#!/bin/bash

# Zemberek-GPRC imajını çalıştır


# Gunicorn ile Django uygulamasını çalıştır
gunicorn grup_14.wsgi:application --bind 0.0.0.0:8000