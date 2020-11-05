#FROM ubuntu:16.04
FROM python:3.8.5-alpine


LABEL maintainer="David Rahäuser <github@sweedinsight.net>"

RUN apk update

#RUN apt-get update -y && \
 #   apt-get install -y python-pip python-dev 

#py3-numpy
#RUN pip install numpy


# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -U pip setuptools
RUN pip install -r requirements.txt

COPY ./app /app

ENTRYPOINT ["python"]
CMD ["routes.py"]