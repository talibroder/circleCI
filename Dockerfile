# Stage 1: Build stage

FROM python:slim as builder

WORKDIR /weather_app

COPY . .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

RUN pip install gunicorn

EXPOSE 5000

CMD gunicorn --bind 0.0.0.0:5000 weather_deploy:app 


