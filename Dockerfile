FROM python:3.10-slim-bullseye

ARG ENVIRONMENT="production"
ENV ENVIRONMENT="$ENVIRONMENT"

WORKDIR /app

COPY . /app

ENTRYPOINT ["/app/entrypoint.sh"]
