#!/bin/bash
kind create cluster --name practice 2>/dev/null
kubectl create namespace build
kubectl create serviceaccount ci-bot -n build
kubectl create serviceaccount deploy-bot -n build
kubectl apply -f challenge1-2-rbac.yaml
echo "cluster + RBAC restored"
