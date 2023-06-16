# //////////////////////////////
# VARIABLES
# //////////////////////////////
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {}
variable "env_instance_type" {}
variable "env_instance_tags" {
    type = map(string)
}
variable "env_instance_count" {}

module "dev" {
    source = "../../manifests"
    aws_access_key = var.aws_access_key
    aws_secret_key = var.aws_secret_key
    region = var.region
    env_instance_type = var.env_instance_type
    env_instance_tags = var.env_instance_tags
    env_instance_count = var.env_instance_count
}
