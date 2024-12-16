#!/bin/bash

case $1 in
  start)
    echo "Starting Kubernetes cluster..."
    kubectl apply -f database/configmap.yaml
    kubectl apply -f database/
    kubectl apply -f backend/
    kubectl apply -f frontend/
    kubectl apply -f network-policy.yaml
    ;;
  stop)
    echo "Stopping Kubernetes cluster..."
    kubectl delete -f database/
    kubectl delete -f backend/
    kubectl delete -f frontend/
    kubectl delete -f network-policy.yaml
    ;;
  *)
    echo "Usage: $0 [start|stop]"
    ;;
esac
