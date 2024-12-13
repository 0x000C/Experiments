# 2024-12-12: Docker syslog-ng

Exploring syslog servers. Settled on `syslog-ng` over `rsyslog` and `busybox syslogd` due to containerization simplicity.

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

This project relies on [syslog-ng](https://www.syslog-ng.com/) to provide syslog functionality.
syslog-ng is licensed under a combination of the [GPLv2 License](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) and the [LGPLv2.1 License](https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html).

The syslog-ng image is pulled dynamically at runtime using this project's configuration and is not distributed with this repository. For more information about syslog-ng licensing, please refer to the official documentation.
