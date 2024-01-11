#!/bin/sh
kubectl delete -f policies/apikey-api-auth-policy.yaml
kubectl delete -f policies/rl-policy-apikey.yaml