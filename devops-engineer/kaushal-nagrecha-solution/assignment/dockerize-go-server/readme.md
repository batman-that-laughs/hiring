### Task 1: Dockerize application

**Problem Statement:**
assignment/main.go is an http server written in Golang.

You have to write a Dockerfile for the same.

Dockerfile should have:

    minimal base image requirement to run the go application
    multi-stage build
    an executable to run by default when starting the container

**Solution:**
Created a Dockerfile for the same
    The Dockerfile copies the source code to the image, builds the Go sample server inside the image
    The Dockerfile exposes the port the application is set to listen to.

**How it works:**
Run
docker build -t <image-name>:<tag> <path-to-directory-containing-dockerfile>
    This command will build the image, follow this up with,
docker run -p 5050:5050 <image-name>
    This command will run the image while binding the port 5050(the port I have used in the sample server) to listen.