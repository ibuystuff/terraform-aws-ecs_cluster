
// Standard Variables

variable "name" {
  description = "Name"
}
variable "environment" {
  description = "Environment (ex: dev, qa, stage, prod)"
}
variable "namespaced" {
  description = "Namespace all resources (prefixed with the environment)?"
  default     = true
}
variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

// Module specific Variables

variable "vpc_id" {
  description = "VPC ID"
}

variable "image_id" {
  description = "AMI Image ID"
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = "list"
}

variable "key_name" {
  description = "SSH key name to use"
}

variable "security_groups" {
  description = "Comma separated list of security groups"
}

variable "iam_instance_profile" {
  description = "Instance profile ARN to use in the launch configuration"
}
variable "ingress_cidrs" {
  description = "Comma separated list of CIDRs for ingress"
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "availability_zones" {
  description = "List of AZs"
  type        = "list"
}

variable "instance_type" {
  description = "The instance type to use, e.g t2.small"
}

variable "instance_ebs_optimized" {
  description = "When set to true the instance will be launched with EBS optimized turned on"
  default     = true
}

variable "min_size" {
  description = "Minimum instance count"
  default     = 3
}

variable "max_size" {
  description = "Maxmimum instance count"
  default     = 100
}

variable "desired_capacity" {
  description = "Desired instance count"
  default     = 3
}

variable "associate_public_ip_address" {
  description = "Should created instances be publicly accessible (if the SG allows)"
  default = false
}

variable "root_volume_size" {
  description = "Root volume size in GB"
  default     = 8
}

variable "docker_volume_size" {
  description = "Attached EBS volume size in GB"
  default     = 22
}

variable "docker_auth_type" {
  description = "The docker auth type, see https://godoc.org/github.com/aws/amazon-ecs-agent/agent/engine/dockerauth for the possible values"
  default     = ""
}

variable "docker_auth_data" {
  description = "A JSON object providing the docker auth data, see https://godoc.org/github.com/aws/amazon-ecs-agent/agent/engine/dockerauth for the supported formats"
  default     = ""
}

variable "extra_cloud_config_type" {
  description = "Extra cloud config type"
  default     = "text/cloud-config"
}

variable "extra_cloud_config_content" {
  description = "Extra cloud config content"
  default     = ""
}

variable "quay_auth" {
  description = "Quay Docker Account Authorization"
}
variable "quay_user" {
  description = "Quay Docker Account User"
}
