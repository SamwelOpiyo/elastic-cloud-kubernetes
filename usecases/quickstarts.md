## Quickstarts

These use cases follow the [quickstart tutorials](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-quickstart.html) hosted by Elasticsearch.

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
    
    At this point, it is necessary to manually configure a default storage class and persistent volume for the operator to dynamically provision a volume for the elasticsearch pod. The one included in the custom folder is annotated with the **is-default-class** set to true and configured to use a **vSAN Default Storage Policy** defined in vSphere.
    
    <pre>
    kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/common/storage.yaml
    kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/common/pv.yaml
    </pre>
    
    <pre>
    kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/all-in-one.yaml
    kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/elasticsearch.yaml
    kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/kibana.yaml
    
    kubectl get elasticsearch
    </pre>
    
  - **Action**
    - Deploy Elasticsearch pod, spec.nodeSets.count: 1
    - Deploy Kibana pod, spec.count: 1
    - Upgrade cluster to Kubernetes 1.18.6
    - Observe Elasticsearch pod
    - Observe Kibaba pod
    
    <pre>
    tkg upgrade cluster use-case-01 --kubernetes-version v1.18.6
    </pre>
    
  - **Postcondition**
    - Existing pod deployments continue running without disruption.
	- New pods are deployed with new Kubernetes version.
	
## Outcome

	- FAIL

## Observations

	- This scenario was not setup with availability or failover in mind.
	- TKG performed the rolling upgrade to the Kubernetes version.
	- The Kibana pod was restarted before the Elasticsearch pod.
	- The Elasticsearch pod restarted successfully.
	- The Kibana pod started, but a readinessProbe continually returns errors (see [use-case-log-01-1.txt]()).

## Cleanup

Execute the following commands to delete all the resources, or to start over.

    <pre>
    kubectl delete elasticsearch quickstart
    kubectl delete pv elasticsearch-data
    kubectl delete sc default
    kubectl delete ns elastic-system
    </pre>
