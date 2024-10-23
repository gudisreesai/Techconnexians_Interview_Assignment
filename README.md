## Creation of a docker image for the react application

Here's a step-by-step guide to creating a Docker image for a React application:

# Step 1: Create a Dockerfile for React Application

Create a file named Dockerfile in your React application's root directory:

Use docker file in the Repo.


# Step 2: Build the Docker Image

Run the following command from your React application's root directory:

docker build -t my-react-app:latest .


# Step 3: Test the Docker Image

Run the Docker container:

docker run -p 3000:3000 my-react-app


Open your web browser and navigate to http://localhost:3000 to verify the application is working.

# Step 4: Push the Docker Image to Docker Hub

Tag the image:

docker tag my-react-app:latest sreesaigudi/my-react-app:latest


Login to Docker Hub:

docker login


Push the image:

docker push sreesaigudi/my-react-app:latest

## Deployment of a the docker image to the kubernetes cluster

Here's a step-by-step guide to the deployment of  a Docker image for a React application:

# Step 1: Create Kubernetes Deployment YAML

Create a file named deployment.yaml:

Use deployment.yaml in the repo.

# Step 2: Apply Kubernetes Deployment

kubectl apply -f deployment.yaml


# Step 3: Expose Kubernetes Deployment as Service

Create a file named service.yaml:

Use service.yaml in the Repo.

# Step 4: Apply Kubernetes Deployment

kubectl apply -f service.yaml


# Step 5: Verify deployment:

 kubectl get deployments
 
 kubectl get pods
 
 kubectl get svc

Access your React application through the Node IP.
`
