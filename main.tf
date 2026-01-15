

module "network" {
  source       = "./network"
  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "iam" {
  source       = "./iam"
  project_name = var.project_name
}

module "rag" {
  source       = "./rag"
  project_name = var.project_name
}

module "auth" {
  source       = "./auth"
  project_name = var.project_name
}

module "backend" {
  source       = "./backend"
  project_name = var.project_name
}

module "api" {
  source       = "./api"
  project_name = var.project_name
  user_pool_id = module.auth.user_pool_id
}

module "frontend" {
  source       = "./frontend"
  project_name = var.project_name
}
