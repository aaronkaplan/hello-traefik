#FROM debian:bullseye
FROM python:3.9.12-bullseye

RUN apt update && apt install -y python3-pip python3
COPY microservice/* /microservice/
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

EXPOSE 9999

CMD ["/microservice/entry.sh"]

# Add any healthchecks here...
#HEALTHCHECK
