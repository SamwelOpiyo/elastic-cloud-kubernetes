## Elastic Cloud on Kubernetes (ECK)

### Use Case #1

  - **Description**
    - Ensure ECK operator works across Kubernetes version upgrades.

  - **Precondition**
    - TKG Production Cluster v1.1.3
    - Kubernetes 1.17.9
    - ECK 1.2.1 operator
    
    <pre>
    	tkg create cluster use-case-01 --kubernetes-version=1.17.9 --plan=prod
    	tkg get credentials use-case-01
    </pre>
    
    At this point, it is necessary to manually configure a storage class for the operator to dynamically provision a volume for the elasticsearch pod.
    We can use the one included in the custom folder of this repository.
    
    <pre>
	kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/common/storage.yaml
    </pre>
    
    <pre>
	kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/all-in-one.yaml
    	kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/elasticsearch.yaml
    
    </pre>
    
  - **Action**
    - Deploy first Elasticsearch pod
    - Deploy first Kibana pod
    - Upgrade cluster to Kubernetes 1.18.6
    - Deploy second Elasticsearch pod
    - Deploy second Kibaba pod
    
  - **Postcondition**
    - Existing pod deployments continue running without disruption.
	- New pods are deployed with new Kubernetes version.
