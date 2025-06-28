A Repository To Deploy A Remote MLFLOW Tracking Server To GCP Cloud Run Using Github Actions

Ensure You Have Executed To Following Commands To Create The Artifact And Backend Stores For Your MLFLOW Tracking Server, Or Create Them Using Gcloud Console.

[Create Bucket](https://cloud.google.com/storage/docs/creating-buckets#console):
```
gcloud storage buckets create gs://<BUCKET_NAME> \
            --location=<REGION> \
            --project=<PROJECT_ID>
```

[Create Artifact Registry Repository](https://cloud.google.com/artifact-registry/docs/repositories/create-repos):
```
gcloud artifacts repositories create <REPOSITORY_NAME> \
            --repository-format=docker \
            --location=<REGION>
```

[Create SQl Instance](https://cloud.google.com/sql/docs/postgres/create-instance#console):
```
gcloud sql instance create <INSTANCE_NAME> \
            --region=<REGION> \
            --database-version=POSTGRES_16 \
            --cpu=2 \
            --memory=3840
```

[Create SQL User](https://cloud.google.com/sql/docs/postgres/create-manage-users):
```
gcloud sql users create <SQL_USERNAME> \
            --instance=<INSTANCE_NAME> \
            --password=<SQL_PASSWORD>
```

[Create SQL Database](https://cloud.google.com/sql/docs/postgres/create-manage-databases):
```
gcloud sql databases create DATABASE_NAME --instance=<INSTANCE_NAME>
```

[Secrets To Set For Github Actions](https://docs.github.com/en/actions/security-for-github-actions/security-guides/using-secrets-in-github-actions):
```
PROJECT_ID
REGION
SERVICE_ACCOUNT
GOOGLE_APPLICATION_CREDENTIALS

BUCKET_NAME
REPOSITORY_NAME
DEPLOY_NAME

SQL_INSTANCE
SQL_USER
SQL_PASSWORD
SQL_DATABASE
```