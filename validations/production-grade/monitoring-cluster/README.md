# Monitoring Cluster for Production Grade ECK Cluster

To setup the monitoring elasticsearch cluster 3 nodes execute:

```
kubectl apply -f monitoring-elasticsearch.yaml
```

To setup a Kibana node, exposed via a Nodeport, execute:

```
kubectl apply -f monitoring-kibana.yaml
```

To deploy Metricbeat and Filebeat using autodiscover configured for Elasticsearch and Kibana Stack Monitoring, execute:

```
kubectl apply -f monitoring-filebeat.yaml
kubectl apply -f monitoring-metricbeat.yaml
```

You can access the Stack Monitoring app in the monitoring cluster’s Kibana.
