# Step-1
docker build -t demo-flask-appx .

# Push to Container Registry 
docker tag demo-flask-appx gcr.io/snowf-101tot/demo-flask-appx
docker tag demo-flask-appx gcr.io/snowf-101tot/demo-flask-appx:latest

docker push gcr.io/snowf-101tot/demo-flask-appx

gcloud run deploy demo-flask-appx --image gcr.io/snowf-101tot/demo-flask-appx --region us-central1


# Push to Artifact Registry 
docker tag demo-flask-app us-central1-docker.pkg.dev/snowf-101tot/python-apps/demo-flask-app
docker push us-central1-docker.pkg.dev/snowf-101tot/python-apps/demo-flask-app

gcloud run deploy demo-flask-app2 \
--image us-central1-docker.pkg.dev/snowf-101tot/python-apps/demo-flask-app \
--region us-central1