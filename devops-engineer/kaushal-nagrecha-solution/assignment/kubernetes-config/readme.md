### Task 2: Deploy the dockerized application using Kubernetes

**Problem Statement:**
Write a kubernetes deployment object having two replicas (pods) of the above application.
Load balance the pods using a service. Expose service at port 31000.

**Solution:**
Created a deployment-config yaml file
    This file contains desployment specs:
        replicas - set to 2.
        template for pods
            image - set to pull the sample image created and pushed to docker hub in the previous task.
            container port - set to listen to the port used by the container
Post creation of the deployment we'll expose the deployment using the kubectl expose command, creating a service with the command line itself.

**How it works:**
Run 
kubectl create -f <path-to-deploy-config-file>/deploy-config.yaml
    This command will create the pods required to deploy the sample go server, follow it up with,
kubectl expose deployment assignment-deployment --type=LoadBalancer --port=31000 --target-port=5050
    This command will create a service that will enable us to access the application running on the individual pods, listening at port 5050, while the incoming request will be routed through port 31000.

