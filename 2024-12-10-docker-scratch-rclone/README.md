# 2024-12-10: Docker-scratch-rclone

Exploring multistage builds, deploying static binaries into a minimal `scratch` Docker image, and using the Docker Compose `configs` parameters.

This project downloads the latest rclone binary, creates an image with the binary, and runs the container.

Currently the container is configured to simply serve the rclone config directory and makes a config file available to the host for setting up remotes.

## Requirements
- Docker
- Docker Compose
- Make

## Usage
- `make build`: Builds the Docker image.
- `make run`: Runs the container using Docker Compose.
- `make stop`: Stops the running container.
- `make clean`: Cleans up all project-related Docker resources.
- `make restart`: Cleans, builds, and runs the container

## Third-Party Software

This project relies on [rclone](https://rclone.org) to provide remote file management capabilities.
rclone is licensed under the [MIT License](https://opensource.org/licenses/MIT).

The rclone binary is downloaded dynamically at runtime using this project’s configuration and is not distributed with this repository.
