FROM python:3.9-alpine3.13
FROM docker:20.10.5-dind




ENV PYTHONUNBUFFERED=1
WORKDIR /ChatGPTBlogWebAppRender

COPY ./requirements.txt /requirements.txt
COPY . .

COPY ./docker-compose.yml /

RUN pip install -r /requirements.txt
COPY ./entrypoint.sh /
ENTRYPOINT [ "sh", "/entrypoint.sh" ]






