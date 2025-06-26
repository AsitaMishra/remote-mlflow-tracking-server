FROM python:3.11-slim

WORKDIR /

ENV GOOGLE_APPLICATION_CREDENTIALS="./secrets/credentials"

COPY run-server.sh run-server.sh

RUN chmod +x run-server.sh

RUN pip install mlflow --no-cache-dir

EXPOSE 5000

ENTRYPOINT [ "./run-server.sh" ]