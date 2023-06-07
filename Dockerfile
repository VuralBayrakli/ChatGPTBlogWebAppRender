FROM python:3.9-alpine3.13

ENV PYTHONUNBUFFERED=1
WORKDIR /ChatGPTBlogWebAppRender
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY . .
EXPOSE 8000

CMD [ "python", "manage.py", "runserver" ]