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

**vSphere 6.7u3**

  - Though TKG is a ubiquitous runtime for hosting Kubernetes on any platform, public cloud or on-premises, the validations outlined below require this version of vSphere 6.7.
  
**ECK 1.2.1**

  - This will be the version this repository has been tested with. To ensure consistency and working functionality, the artifacts for these versions can be found in artifacts folder.
  
  - Refer to the [Elastic Cloud on Kubernetes](https://www.elastic.co/guide/en/cloud-on-k8s/current/index.html) home page for additional information.

**TKG CLI** - [Download](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.1/vmware-tanzu-kubernetes-grid-11/GUID-install-tkg-set-up-tkg.html)

  - The Tanzu Kubernetes Grid CLI for creating, managing, and interacting with the cluster, particularly for retrieving the credentials.
  
  - [Download](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.1/vmware-tanzu-kubernetes-grid-11/GUID-install-tkg-set-up-tkg.html) the TKG CLI.
  
**kubectl** - [Download](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

  - The CLI necessary to deploy the ECK operator, Elasticsearch, Kibana, and other components and services.
  
  - [Download](https://kubernetes.io/docs/tasks/tools/install-kubectl/) the kubectl CLI.

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
