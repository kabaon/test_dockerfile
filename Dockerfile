FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -U pip
RUN pip install -r requirements.txt
RUN apt-get update -y && apt-get install vim -y
RUN pip install django-bootstrap4
ADD . /code/
