FROM python:3.9-alpine3.13




ENV PYTHONUNBUFFERED=1
WORKDIR /ChatGPTBlogWebAppRender

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY ./docker-compose.yml /docker-compose.yml
RUN docker-compose build

COPY . .
EXPOSE 8000
CMD ["gunicorn", "grup_14.wsgi:application", "--bind", "0.0.0.0:8000"]


