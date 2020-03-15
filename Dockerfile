FROM python:3.6-alpine

COPY requirements.txt /usr/src/app/requirements.txt
WORKDIR /usr/src/app

RUN apk add --no-cache --virtual bash g++ libxml2-dev libxslt-dev python3-dev && \
  apk add unzip chromium chromium-chromedriver && \
  python3 -m pip install -r requirements.txt
