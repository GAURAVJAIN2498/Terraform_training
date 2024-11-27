provider "kubernetes" {
  host                   = "https://192.168.59.105:8443"
  cluster_ca_certificate = file("C:/Users/pc/.minikube/ca.crt")
  client_certificate     = file("C:/Users/pc/.minikube/profiles/minikube/client.crt")
  client_key             = file("C:/Users/pc/.minikube/profiles/minikube/client.key")
}
