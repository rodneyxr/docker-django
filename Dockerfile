FROM python:3.5.2
MAINTAINER <me@rodneyxr.com>
ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY ./code/requirements.txt /code/requirements.txt
RUN pip install -r /code/requirements.txt
COPY ./code /code
EXPOSE 80 443 8000