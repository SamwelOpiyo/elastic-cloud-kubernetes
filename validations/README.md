## Elastic Cloud on Kubernetes (ECK)

### [Quickstart Validation 01](quickstarts/validation-01/)

	- Ensure ECK operator works across Kubernetes version upgrades on **single instances** of Elasticsearch and Kibana. FAIL

### [Quickstart Validation 02](quickstarts/validation-02/)

	- Ensure ECK operator works across Kubernetes version upgrades on **multiple instances** of Elasticsearch and Kibana. FAIL

### [Quickstart Validation 03](quickstarts/validation-03/)

	- Ensure ECK operator works across ECK version upgrades.

### TODO

**Backups**

How are backups/snapshots performed? What tools are supported? Velero?

[https://discuss.elastic.co/t/how-to-backup-restore/194541](https://discuss.elastic.co/t/how-to-backup-restore/194541)

[https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-snapshots.html](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-snapshots.html)

[https://github.com/elastic/cloud-on-k8s/issues/2792](https://github.com/elastic/cloud-on-k8s/issues/2792)

**Patching**

**Performance & Tuning**

**Monitoring**

What monitoring tools can be integrated?

**Scalability**

Auto-Scaling? Manual Scaling?

**Availability**

Load Balancer? Ingress? Availability Zones?

**Security**

**Certificate Mgmt**
Certificate Mgmt, rotating expired certs, etc...
