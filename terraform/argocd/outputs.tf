output "argocd_namespace" {
  description = "Namespace where ArgoCD is deployed"
  value       = kubernetes_namespace.infra_tools.metadata[0].name
}

output "argocd_release_name" {
  description = "Name of the Helm release"
  value       = helm_release.argocd.name
}

output "argocd_namespace_status" {
  description = "Status of ArgoCD namespace"
  value       = kubernetes_namespace.infra_tools.metadata[0]
}
