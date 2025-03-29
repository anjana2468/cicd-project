
# Todo App CI/CD Project

This project is a simple Todo application with a continuous integration and continuous deployment (CI/CD) pipeline. The app is built using Django, and it is containerized using Docker. The deployment is done on an EC2 instance.

## Features

- User authentication (login/signup)
- Add, update, and delete tasks
- Mark tasks as completed
- CI/CD pipeline for automated testing, building, and deployment

## Technologies

- Python 3.8
- Django 3.2
- Docker
- AWS EC2
- GitHub for version control
- Jenkins for CI/CD pipeline

## Setup

### Prerequisites

- Docker installed on your local machine
- AWS EC2 instance
- Jenkins for CI/CD setup
- GitHub repository with the project code

### Steps

#### 1. Clone the Repository

Clone the GitHub repository to your local machine:

```bash
git clone https://github.com/anjana2468/cicd-project
cd cicd-project
```
#### 2. Build the Docker Image
Navigate to the project directory and build the Docker image:

```
docker build -t my-app .
```
#### 3. Run the Docker Container
Run the container on port 8081:
```
docker run -d -p 8081:8080 my-app
```
#### 4. Access the App
Open your web browser and go to http://<EC2_PUBLIC_IP>:8081 to access the Todo app.

Replace <EC2_PUBLIC_IP> with the public IP address of your EC2 instance.

## Jenkins Setup
Set up a Jenkins job to automate the build and deployment process.

Ensure that Jenkins has access to your GitHub repository.

Configure the pipeline to build the Docker image and deploy it to your EC2 instance.

## Pipeline Script
The Jenkins pipeline script automates the following steps:

Fetch the latest changes from GitHub

Build the Docker image

Run the Docker container on your EC2 instance

![Screenshot 2025-03-29 151830](https://github.com/user-attachments/assets/06da412a-7cf6-4148-8b0b-1e59f220d24d)
![Screenshot 2025-03-29 152016](https://github.com/user-attachments/assets/82eb2a30-750e-4a88-b20b-51f2d7aa2696)
![Screenshot 2025-03-29 151756](https://github.com/user-attachments/assets/a410b67a-37b2-4bc5-89de-c01ea95e824e)
