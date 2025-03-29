Todo App CI/CD Project
# This project is a simple Todo application with a continuous integration and continuous deployment (CI/CD) pipeline. The app is built using Django, and it is containerized using Docker. The deployment is done on an EC2 instance.

Features
1. User authentication (login/signup)

2. Add, update, and delete tasks

3. Mark tasks as completed

4.CI/CD pipeline for automated testing, building, and deployment

Technologies
Python 3.8
Django 3.2
Docker
AWS EC2

GitHub for version control

Jenkins for CI/CD pipeline

Setup
Prerequisites
Docker installed on your local machine

AWS EC2 instance

Jenkins for CI/CD setup

GitHub repository with the project code

Steps
Clone the repository:
git clone https://github.com/anjana2468/cicd-project
Build the Docker image: Navigate to the project directory and build the Docker image:


docker build -t my-app .
Run the Docker container: Run the container on port 8081:

bash
Copy
Edit
docker run -d -p 8081:8080 my-app
Access the app: Open your web browser and go to http://<EC2_PUBLIC_IP>:8081 to access the Todo app.

CI/CD with Jenkins
Jenkins Setup:

Set up a Jenkins job to automate the build and deployment process.

Ensure that Jenkins has access to your GitHub repository.

Configure the pipeline to build the Docker image and deploy it to your EC2 instance.

Pipeline Script: The Jenkins pipeline script automates the following steps:

Fetch the latest changes from GitHub

Build the Docker image

Run the Docker container on your EC2 instance
