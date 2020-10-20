## Quickstarts

This use case is based on the [quickstart tutorials](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-quickstart.html) hosted by Elasticsearch.

### Use Case #1

  - **Description**
    - Ensure ECK operator works across Kubernetes version upgrades on single instances of Elasticsearch and Kibana.

  - **Precondition**
    - TKG Production Cluster v1.1.3
    - Kubernetes 1.17.9
    - ECK 1.2.1 operator
    
  - **Action**
    - Deploy Elasticsearch pod
    - Deploy Kibana pod
    - Upgrade cluster to Kubernetes 1.18.6
    - Observe Elasticsearch pod
    - Observe Kibaba pod
    
  - **Postcondition**
    - Existing elasticsearch and kibana deployments continue running without disruption.
	- New nodes and pods are restarted with new Kubernetes version.
	
## Steps

Execute each of the following steps manually, or execute them all by running the [script](script1.sh).

**NOTE**: It is necessary to manually configure a default storage class and persistent volume for the operator to dynamically provision a volume for the elasticsearch pod. The one included in the custom folder, storage.yaml, is annotated with the **is-default-class** set to true and configured to use a **vSAN Default Storage Policy** defined in vSphere.

<pre>
tkg create cluster use-case-01 --kubernetes-version=1.17.9 --plan=prod
tkg get credentials use-case-01
</pre>

<pre>
kubectl config use-context use-case-01-admin@use-case-01
</pre>
    
<pre>
kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/common/storage.yaml
kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/common/pv.yaml
</pre>
    
<pre>
kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/all-in-one.yaml
kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/elasticsearch.yaml
kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/kibana.yaml

kubectl get elasticsearch
kubectl get kibana
</pre>

<pre>
tkg upgrade cluster use-case-01 --kubernetes-version v1.18.6
</pre>
	
## Outcome

	- FAIL

## Observations

	- This scenario was not setup with availability or failover in mind.
	- TKG performed the rolling upgrade to the Kubernetes version.
	- The Kibana pod was restarted before the Elasticsearch pod.
	- The Elasticsearch pod restarted successfully.
	- The Kibana pod started, but a readinessProbe continually returns errors (see [use-case-log-01-1.txt](use-case-log-01-1.txt)).
	
	- In order to understand this behavior, a new cluster was created.
	- The Kibana pod would not even attempt to install if an Elasticsearch instance was not already running (see [use-case-log-01-2.txt](use-case-log-01-2.txt).

## Cleanup

Execute the following commands to delete all the resources, or execute them all by running the [script](script2.sh).

<pre>
kubectl delete kibana quickstart
kubectl delete elasticsearch quickstart
kubectl delete pv elasticsearch-data
kubectl delete sc default
kubectl delete ns elastic-system
</pre>
