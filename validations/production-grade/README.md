# Production Grade ECK Cluster

The following directory contains artifacts that can be used to create a production level ECK cluster.

## Set Up

Ensure you have kubectl cli installed and authenticated with the cluster that you will use for ECK.

To setup the main elasticsearch cluster (3 master nodes, 6 data nodes, 3 ingest nodes, 3 coordinator nodes and 3 ml nodes), https://www.elastic.co/elasticsearch/, execute:

```
kubectl apply -f elasticsearch.yaml
```

To setup 3 Kibana nodes, https://www.elastic.co/kibana, exposed via a Nodeport, execute:

```
kubectl apply -f kibana.yaml
```

To setup 3 EnterpriseSearch nodes, https://www.elastic.co/enterprise-search, execute:

```
kubectl apply -f enterprisesearch.yaml
```

To setup an APMServer node, https://www.elastic.co/apm, execute:

```
kubectl apply -f apmserver.yaml
```

For beats and monitoring setup, refer [here](./beats/README.md) and [here](./monitoring/README.md) respectively.
