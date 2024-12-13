# 2024-12-12: Docker-busybox-syslog

Exploring simple syslog servers. Settled on busybox because it's *really* simple, and `rsyslog` is kind of difficult in docker.

## Requirements
- Docker Compose
- Make

## Usage
- `make run`: Runs the container using Docker Compose.
- `make monitor`: Reads the logs of the running container.
- `make stop`: Stops the running container.
- `make clean`: Cleans up all project-related Docker resources.
- `make restart`: Cleans, builds, and runs the container

## Third-Party Software

This project relies on [BusyBox](https://busybox.net/) to provide lightweight syslog functionality.
BusyBox is licensed under the [GPLv2 License](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).

The BusyBox image is pulled dynamically at runtime using this project's configuration and is not distributed with this repository.
