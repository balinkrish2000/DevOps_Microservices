<include a CircleCI status badge, here>

[![CircleCI](https://circleci.com/gh/balinkrish2000/DevOps_Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/balinkrish2000/DevOps_Microservices/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


### Files in the Repository

* app.py|main flask app containing the ml housing loan prediction application
* Dockerfile|contains the steps to configure the docker image
* Makefile|To run make commands locally
* requirements|consists all the requirements that should be installed for the app to run
* run_docker|For building and running the container locally
* upload_docker|To push the container to docker hub
* run_kubernetes|To push the docker image to a local kubernetes pod
* make_prediction|To run the flask app to make ml predictions

### Instructions on running

*Create virtual environment using 'python3 -m venv ~/.devops && source ~/.devops/bin/activate'
*'make install' to install all requirements to run the flask app locally
*'make lint' to lint the flask app and the docker file
*'./run_docker.sh' to create a local docker container with the image of the app (name 'api')
*'./make_prediction.sh' to run the prediction using the local docker container
*'./upload_docker.sh' to push the local docker image to docker hub
*'minikube start' to start the local kubernetes cluster
*'./run_kubernetes.sh' to push the api image from docker hub to the local kubernetes pod
*'./make_prediction.sh' to run the prediction using the image in local kubernetes pod

