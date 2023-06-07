FROM python:3.9-alpine3.13




ENV PYTHONUNBUFFERED=1
WORKDIR /ChatGPTBlogWebAppRender
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY . .
EXPOSE 8000
ARG container_name=my-zemberek-container
CMD docker pull ryts/zemberek-grpc & docker run -d --name ${container_name} ryts/zemberek-grpc & gunicorn grup_14.wsgi:application --bind 0.0.0.0:8000 

