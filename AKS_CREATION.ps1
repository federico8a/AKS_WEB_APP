az login



az acr login --name acregistryfederico

docker tag web2:latest acregistryfederico.azurecr.io/myapp:1.0 
docker push acregistryfederico.azurecr.io/myapp:1.0 



az aks get-credentials --resource-group aks_Test --name fedeakscluster
az aks nodepool list --resource-group $RESOURCE_GROUP --cluster-name $AKS_CLUSTER_NAME --query "[].name"
# Get available node pools
Write-Host "Available node pools:"
az aks nodepool list --resource-group $RESOURCE_GROUP --cluster-name $AKS_CLUSTER_NAME --query "[].name"

# Deploy the application with node selection
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# Verify that pods are running in the correct node pool
kubectl get pods -o wide

kubectl apply -f deployment.yaml
kubectl get pods -o 
kubectl expose pod <a-pod-name> --type=LoadBalancer --name=exposingservie --port=80 --target-port=80
