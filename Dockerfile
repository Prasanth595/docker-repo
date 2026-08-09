FROM google/cloud-sdk:slim

RUN gcloud components install beta --quiet

WORKDIR /app

COPY key.json /app/key.json
COPY transfer-job.json /app/transfer-job.json

ENV GOOGLE_APPLICATION_CREDENTIALS=/app/key.json

CMD ["sh", "-c", "gcloud auth activate-service-account --key-file=/app/key.json && gcloud transfer jobs create --source-file-path=/data --destination-gcs-bucket=spring-boot-firebase-nonprod.appspot.com --schedule-starts=$(date +%Y-%m-%dT%H:%M:%S) --schedule-repeats-every=15m"]
