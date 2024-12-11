# 2024-12-10: Docker-scratch-rclone

Exploring multistage builds and deploying static binaries into a minimal `scratch` Docker image.

## Requirements
- Docker
- Docker Compose
- Make

## Usage
- `make build`: Builds the Docker image.
- `make run`: Runs the container using Docker Compose.
- `make stop`: Stops the running container.
- `make clean`: Cleans up all project-related Docker resources.
