# 2024-12-14: Kubernetes whoami

Exploring Kubernetes. Settled on `k3s` over other servers due to simplicity.

This cluster serves the Traefik `whoami` diagnostic HTTP server image to port 8088 with 2 replicas.

## Requirements
- k3s (tested on v1.31.1)
- kubectl

## Usage
To control the application:

```bash
./control-app.sh [start|stop]
```

### Commands
- `start`  - Deploy the application to the cluster using `whoami` as a service.
- `stop`   - Remove the application from the cluster.

## Files
- `control-app.sh`: Script to manage the deployment and teardown of the application.
- `whoami-deployment.yaml`: Deployment manifest for the Traefik `whoami` container.
- `whoami-service.yaml`: Service manifest to expose the application.
