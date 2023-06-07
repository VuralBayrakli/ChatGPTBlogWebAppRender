FROM python:3.9-alpine3.13
FROM ryts/zemberek-grpc

RUN docker run -d -p 6789:6789 --name my-zemberek-container ryts/zemberek-grpc

ENV PYTHONUNBUFFERED=1
WORKDIR /ChatGPTBlogWebAppRender
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY . .
EXPOSE 8000
ARG container_name=my-zemberek-container
CMD gunicorn grup_14.wsgi:application --bind 0.0.0.0:8000

