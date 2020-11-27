# Beats on ECK Operator.

https://www.elastic.co/beats/

To deploy Metricbeat that monitors the usage of the following resources:
 * Host: CPU, memory, network, filesystem.
 * Kubernetes: Nodes, Pods, Containers, Volumes.

 execute:

 ```
 kubectl apply -f metricbeat.yaml
 ```

 To deploy Filebeat with the autodiscover feature enabled, execute:

 ```
 kubectl apply -f filebeatbeat.yaml
 ```

 It collects logs from Pods in every namespace and loads them to the connected Elasticsearch cluster.

 To deploy Heartbeat that monitors the health of Elasticsearch and Kibana by TCP, probing their Service endpoints, execute:

 ```
 kubectl apply -f heartbeat.yaml
 ```

 To deploy Auditbeat that checks file integrity and audits file operations on the host system, execute:

 ```
 kubectl apply -f auditbeat.yaml
 ```

 To deploy Journalbeat that ships data from systemd journals, execute:

 ```
 kubectl apply -f journalbeat.yaml
 ```

 To deploy Packetbeat that monitors DNS on port 53 and HTTP(S) traffic on ports 80, 8000, 8080 and 9200, execute:

 ```
 kubectl apply -f packetbeat.yaml
 ```
