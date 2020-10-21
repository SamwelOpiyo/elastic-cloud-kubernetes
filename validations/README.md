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

[https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-snapshots.html](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-snapshots.html)

**Disaster Recovery**

[https://www.google.com/search?q=elastic+cloud+for+kubernetes+disaster+recovery&rlz=1C1CHBF_enUS795US795&oq=elastic+cloud+for+kubernetes+disaster+recovery&aqs=chrome..69i57j33i160.12173j0j7&sourceid=chrome&ie=UTF-8](https://www.google.com/search?q=elastic+cloud+for+kubernetes+disaster+recovery&rlz=1C1CHBF_enUS795US795&oq=elastic+cloud+for+kubernetes+disaster+recovery&aqs=chrome..69i57j33i160.12173j0j7&sourceid=chrome&ie=UTF-8)

**Upgrades/Patching**

[https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-upgrading-eck.html](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-upgrading-eck.html)

[https://www.google.com/search?q=elastic+cloud+for+kubernetes+patching&rlz=1C1CHBF_enUS795US795&oq=elastic+cloud+for+kubernetes+patching&aqs=chrome..69i57.7650j0j7&sourceid=chrome&ie=UTF-8](https://www.google.com/search?q=elastic+cloud+for+kubernetes+patching&rlz=1C1CHBF_enUS795US795&oq=elastic+cloud+for+kubernetes+patching&aqs=chrome..69i57.7650j0j7&sourceid=chrome&ie=UTF-8)

**Performance & Tuning**

**Monitoring**

[https://www.elastic.co/blog/elastic-stack-monitoring-with-elastic-cloud-on-kubernetes](https://www.elastic.co/blog/elastic-stack-monitoring-with-elastic-cloud-on-kubernetes)

What third-party monitoring tools can be integrated?

**Logging**

Using fluentd in following link.

[https://blog.kubernauts.io/simple-logging-with-eck-and-fluentd-13824ad65aaf](https://blog.kubernauts.io/simple-logging-with-eck-and-fluentd-13824ad65aaf)

**Scalability**

Auto-Scaling? Manual Scaling?

[https://www.elastic.co/blog/getting-started-with-elastic-cloud-on-kubernetes-deployment](https://www.elastic.co/blog/getting-started-with-elastic-cloud-on-kubernetes-deployment)

**Availability**

Load Balancer? Ingress? Availability Zones?

[https://www.elastic.co/blog/high-availability-elasticsearch-on-kubernetes-with-eck-and-gke](https://www.elastic.co/blog/high-availability-elasticsearch-on-kubernetes-with-eck-and-gke)

**Security**

**Certificate Mgmt**
Certificate Mgmt, rotating expired certs, etc...
