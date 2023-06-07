set -e

# Docker Compose dosyasının konumunu alın
DOCKER_COMPOSE_FILE="/docker-compose.yml"

# Docker Compose'yi başlatın
docker-compose -f "$DOCKER_COMPOSE_FILE" up
gunicorn grup_14.wsgi:application --bind 0.0.0.0:8000