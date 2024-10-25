# Assign Service account user role to the service account 
gcloud projects add-iam-policy-binding snowf-101tot \
--member=serviceAccount:626204374140@cloudbuild.gserviceaccount.com --role=roles/iam.serviceAccountUser


# Assign Cloud Run role to the service account 
gcloud projects add-iam-policy-binding snowf-101tot \
  --member=serviceAccount:626204374140@cloudbuild.gserviceaccount.com --role=roles/run.admin
