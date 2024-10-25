gcloud builds submit --region us-central1

  # Assign the roles 
  gcloud projects add-iam-policy-binding snowf-101tot \
  --member=serviceAccount:626204374140@cloudbuild.gserviceaccount.com --role=roles/iam.serviceAccountUser

  gcloud projects add-iam-policy-binding snowf-101tot \
  --member=serviceAccount:626204374140@cloudbuild.gserviceaccount.com --role=roles/run.admin