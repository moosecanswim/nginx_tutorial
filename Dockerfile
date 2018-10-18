FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx net-tools curl nano systemd

# COPY ./nginx.service /lib/systemd/system/nginx.service

COPY ./sites/demo /sites/demo
COPY ./nginx.conf /etc/nginx/nginx.conf