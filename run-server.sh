#!/bin/bash

mlflow server \
    --host 0.0.0.0 \
    --port 5000 \
    --backend-store-uri ${POSTGRES_URL} \
    --artifacts-destination ${STORAGE_URL} 