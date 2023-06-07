FROM python:3.9-alpine3.13




ENV PYTHONUNBUFFERED=1
WORKDIR /ChatGPTBlogWebAppRender
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY ./run.sh /run.sh
RUN chmod +x /run.sh

COPY . .
EXPOSE 8000
CMD ["/run.sh"]


