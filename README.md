# MLOPS-7 ArgoCD on EKS

This repository deploys ArgoCD to an existing EKS cluster using Terraform.

## Deploy ArgoCD

```bash
cd terraform/argocd
terraform init
terraform apply -var="cluster_name=ml-eks-cluster"
```

## Check ArgoCD

```bash
kubectl get pods -n infra-tools
kubectl get svc -n infra-tools
```

## Open ArgoCD UI

```bash
kubectl port-forward svc/argocd-server -n infra-tools 8080:80
```

Open http://localhost:8080

## Admin password

```bash
kubectl -n infra-tools get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo
```

## Application repo

Use the separate `goit-argo` repository for ArgoCD application manifests and namespaces.
