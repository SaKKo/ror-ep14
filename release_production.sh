gcloud builds submit --project "geekstart-production" --config=./production-cloud-build.yml

gcloud run deploy sakko-demo-api --region asia-southeast1 --max-instances 1 --project "geekstart-production" --image gcr.io/geekstart-production/sakko-demo-api --platform managed --add-cloudsql-instances geekstart-production:asia-southeast1:database-for-serverless-apps --update-env-vars INSTANCE_CONNECTION_NAME="geekstart-production:asia-southeast1:database-for-serverless-apps",RAILS_MASTER_KEY="$(cat ./config/master.key)"
