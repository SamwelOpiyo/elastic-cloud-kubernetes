tkg delete cluster use-case-01
tkg create cluster use-case-01 --kubernetes-version=1.17.9 --plan=prod
tkg get credentials use-case-01

kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/common/storage.yaml
kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/common/pv.yaml
kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/all-in-one.yaml
kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/elasticsearch.yaml
kubectl apply -f https://raw.githubusercontent.com/nycpivot/elastic-cloud-kubernetes/main/artifacts/kibana.yaml