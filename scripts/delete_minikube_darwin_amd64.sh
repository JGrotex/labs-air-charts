#!/bin/sh

release_name=$1

sudo rm -rf /etc/resolver/*-air

minikube addons disable ingress
minikube addons disable ingress-dns

helm delete ${release_name}
