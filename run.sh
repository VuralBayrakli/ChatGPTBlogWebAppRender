#!/bin/bash

# Zemberek-GPRC imajını çalıştır
docker pull ryts/zemberek-grpc
docker run -d --name my-zemberek-container ryts/zemberek-grpc

# Gunicorn ile Django uygulamasını çalıştır
gunicorn grup_14.wsgi:application --bind 0.0.0.0:8000