#!/bin/bash

kubectl apply -f monitoring-elasticsearch.yaml
kubectl apply -f monitoring-kibana.yaml
kubectl apply -f monitoring-filebeat.yaml
kubectl apply -f monitoring-metricbeat.yaml
