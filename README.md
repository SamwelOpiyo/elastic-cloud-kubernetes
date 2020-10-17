## Elastic Cloud on Kubernetes (ECK)

### Introduction

This repository is meant to validate, demonstrate, and provide a starter for hosting the ECK operator on a VMware Tanzu Kubernetes Grid (TKG) cluster.

The ECK operator extends the basic Kubernetes orchestration capabilities to support the setup and management of **Elasticsearch**, **Kibana** and **APM Server** on Kubernetes.

With Elastic Cloud on Kubernetes you can streamline all those critical operations, such as:

  - Managing and monitoring multiple clusters
  - Scaling cluster capacity up and down
  - Changing cluster configuration
  - Scheduling backups
  - Securing clusters with TLS certificates
  - Setting up hot-warm-cold architectures with availability zone awareness

### Prerequisites

Though TKG is a ubiquitous runtime for hosting Kubernetes on any platform, public cloud or on-premises, the validations outlined below were performed on **vSphere 6.7u3**.

The version used in the preparation of this repository will be **ECK 1.2.1**. Refer to the [home page](https://www.elastic.co/guide/en/cloud-on-k8s/current/index.html) for additional information. In order to ensure working functionality in this repository, the specific versions of the artifacts are hosted here.

## Operations

**CI/CD**

**Backups**

How are backups performed? What tools are supported?

**Upgrades**

Does the ECK operator support zero-downtime upgrades, canary deployments, etc..?

**Patching**

**Performance & Tuning**

**Disaster Recovery**

**Monitoring**

What monitoring tools can be integrated?

**Scalability**

Auto-Scaling? Manual Scaling?

**Availability**

Load Balancer? Ingress? Availability Zones?

**Security**

Certificate Mgmt, rotating expired certs, etc...
