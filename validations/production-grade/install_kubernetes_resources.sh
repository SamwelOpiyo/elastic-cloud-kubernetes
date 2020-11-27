#!/bin/bash

kubectl apply -f elasticsearch.yaml
kubectl apply -f kibana.yaml
kubectl apply -f enterprisesearch.yaml
kubectl apply -f apmserver.yaml
