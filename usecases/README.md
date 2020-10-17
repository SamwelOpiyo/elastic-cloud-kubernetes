## Elastic Cloud on Kubernetes (ECK)

### Operations Use Cases

### Use Case #1

  - **Description**
    - Ensure ECK operator works across Kubernetes version upgrades.

  - **Precondition**
    - TKG Production Cluster
    - Kubernetes 1.16
    - ECK 1.2.1 operator
    
  - **Action**
    - Deploy first Elasticsearch pod
    - Deploy first Kibana pod
    - Upgrade cluster to Kubernetes 1.18
    - Deploy second Elasticsearch pod
    - Deploy second Kibaba pod
    
  - **Postcondition**
    - Existing pod deployments continue running without disruption.
	- New pods are deployed with new Kubernetes version.
