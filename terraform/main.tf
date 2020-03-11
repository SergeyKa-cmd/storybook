provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
}
#Creating Kubernetes cluster with initial pool
module "gke" {
  source       = "./modules/gke"
  project      = "${var.project}"
  name         = "${var.name}"
  location     = "${var.location}"
  machine_type = "${var.machine_type}"
}
#Creating namespaces
module "namespaces" {
  source = "./modules/namespaces"
}
#Creating main workloads
module "pods" {
  source = "./modules/pods"
}
#Creating storageclass, persistent disk and claim
module "pvdisk" {
  source = "./modules/pvdisk"
}
