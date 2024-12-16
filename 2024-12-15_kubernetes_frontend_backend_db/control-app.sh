#!/bin/bash

case $1 in
  start)
    echo "Starting Kubernetes cluster..."
    sudo k3s kubectl apply -f database/configmap.yaml
    sudo k3s kubectl apply -f database/
    sudo k3s kubectl apply -f backend/
    sudo k3s kubectl apply -f frontend/
    sudo k3s kubectl apply -f network-policy.yaml
    ;;
  stop)
    echo "Stopping Kubernetes cluster..."
    sudo k3s kubectl delete -f database/
    sudo k3s kubectl delete -f backend/
    sudo k3s kubectl delete -f frontend/
    sudo k3s kubectl delete -f network-policy.yaml
    ;;
  *)
    echo "Usage: $0 [start|stop]"
    ;;
esac
