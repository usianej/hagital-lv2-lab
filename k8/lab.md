az group create --name tstrg --location eastus

mkdir .ssh

ssh-keygen -f .ssh/aks-ssh

az aks create --resource-group tstrg --name myAKSCluster --ssh-key-value .ssh/aks-ssh.pub

az aks create \
--resource-group myResourceGroup \
--name myAKSCluster \
--node-count 1 \
--nodepool-name systemnp \
--node-resource-group myNodeResourceGroup \
--ssh-key-value .ssh/aks-ssh.pub \
--network-plugin azure \
--enable-managed-identity \
--enable-cluster-autoscaler \
--min-count 1 \
--max-count 10 \
--zones 1 2 3



