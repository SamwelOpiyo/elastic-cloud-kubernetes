#!/bin/bash

kubectl apply -f metricbeat.yaml
kubectl apply -f filebeatbeat.yaml
kubectl apply -f heartbeat.yaml
kubectl apply -f auditbeat.yaml
kubectl apply -f journalbeat.yaml
kubectl apply -f packetbeat.yaml
