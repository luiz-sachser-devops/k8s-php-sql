# Kubernetes Cluster - Back/Frontend using PHP-SQL

## Cluster example using Kubernetes

An example showcasing how to use Kubernetes to deploy an app running PHP and a MySQL Database in a cluster with 3 nodes and 6 replicas
_[Kubernetes in Docker](https://docs.docker.com/desktop/kubernetes/)_.

### Architecture

![Architecture](https://github.com/luiz-sachser-devops/k8s-php-sql/blob/main/architecture.png?raw=true)

1. Project is divided into an isolated Frontend and backend running inside a Kubernetes cluster;

2. This example assumes a GCP cluster running;

3. A LoadBalancer is placed in front of the cluster;

4. First node is running 2 pods and MySQL database with local PersistentVolume;


### Steps to run the example.

1. Connect to the GCP account.
2. Run the script.sh file to deploy services and pods;
3. Run ```kubectl get services``` to identify Cluster LoadBalancer IP;
4. Insert the previous IP into the  URL line in the /frontend/js.js file;
5. Access the URL and start inserting data into the DataBase
6. Run ```kubectl get pods``` and copy MySQL pod name;
7. Run ```kubectl exec --tty --stdin <pod name> -- /bin/bash```
8. Inside the pod run ```mysql``` and check all the data inserted (ie. commands SQL)

## This project is part of DIO DevOps with AWS Bootcamp
