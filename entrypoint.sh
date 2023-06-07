docker-compose -f /docker-compose.yml build 
docker-compose /docker-compose.yml up -d
gunicorn grup_14.wsgi:application --bind 0.0.0.0:8000