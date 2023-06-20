#!/bin/bash

echo "Creating the images..."

docker build -t heidenblut/backend-project:1.0 backend/.
docker build -t heidenblut/database-project:1.0 database/.

echo "Pushing the images..."

docker push heidenblut/backend-project:1.0
docker push heidenblut/backend-database:1.0

echo "Creating services in the Kubernetes cluster..."

kubectl apply -f ./services.yml

echo "Deploying apps... "

kubectl apply -f ./deployment.yml