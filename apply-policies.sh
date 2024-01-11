#!/bin/sh
kubectl apply -f policies/apikey-api-auth-policy.yaml
kubectl apply -f policies/rl-policy-apikey.yaml