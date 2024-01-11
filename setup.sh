#!/bin/sh

kubectl apply -f virtualgateways/vg.yaml

kubectl create ns keycloak
kubectl create ns httpbin

kubectl apply -f policies/auth-server.yaml
kubectl apply -f policies/rl-server.yaml
kubectl apply -f policies/rl-server-config.yaml
kubectl apply -f policies/rl-client-config-apikey.yaml

kubectl apply -f keycloak/keycloak.yaml
kubectl apply -f routetables/keycloak-example-com-rt.yaml

kubectl apply -f routetables/api-example-com-rt.yaml