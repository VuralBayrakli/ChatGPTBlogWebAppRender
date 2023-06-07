FROM python:3.9-alpine3.13



ENV PYTHONUNBUFFERED=1
WORKDIR /ChatGPTBlogWebAppRender

COPY ./requirements.txt /requirements.txt
COPY . .


RUN pip install -r /requirements.txt

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]






