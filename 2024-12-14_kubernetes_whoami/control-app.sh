#!/bin/bash

DEPLOYMENT_FILE="whoami-deployment.yaml"
SERVICE_FILE="whoami-service.yaml"

start() {
    echo "Starting the application..."
    if sudo k3s kubectl apply -f "$DEPLOYMENT_FILE" && \
        sudo k3s kubectl apply -f "$SERVICE_FILE"; then
        echo "Application started successfully."
    else
        echo "Error: Failed to start the application." >&2
        exit 1
    fi
}

stop() {
    echo "Stopping the application..."
    if sudo k3s kubectl delete -f "$DEPLOYMENT_FILE" \
        && sudo k3s kubectl delete -f "$SERVICE_FILE"; then
        echo "Application stopped successfully."
    else
        echo "Error: Failed to stop the application." >&2
        exit 1
    fi
}

usage() {
    echo "Usage: $0 [start|stop]"
    echo "  start  - Deploy the application to the cluster"
    echo "  stop   - Remove the application from the cluster"
    echo "  help   - Show this usage guide"
}

if [ $# -eq 0 ]; then
    usage
    exit 1
fi

case $1 in
    start)
        start
        ;;
    stop)
        stop
        ;;
    help|*)
        usage
        ;;
esac