# Variables for general information
###################################

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "aws_profile" {
  description = "AWS profile name"
  type        = string
  default     = "socloudtech"
}

variable "owner" {
  description = "Configuration owner"
  type        = string
}

variable "aws_region_az" {
  description = "AWS region availability zone"
  type        = string
  default     = "a"
}

# Variables for VPC
###################################

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_dns_support" {
  description = "Enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "vpc_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

# Variables for Security Group
######################################

variable "sg_ingress_protocol_tcp" {
  description = "Protocol used for the ingress rule"
  type        = string
  default     = "tcp"
}

variable "sg_ingress_ssh" {
  description = "Port used for the ingress rule"
  type        = string
  default     = "22"
}

variable "sg_egress_proto" {
  description = "Protocol used for the egress rule"
  type        = string
  default     = "-1"
}

variable "sg_egress_all" {
  description = "Port used for the egress rule"
  type        = string
  default     = "0"
}

variable "sg_egress_cidr_block" {
  description = "CIDR block for the egress rule"
  type        = string
  default     = "0.0.0.0/0"
}

# Variables for Subnet
######################################

variable "sbn_public_ip" {
  description = "Assign public IP to the instance launched into the subnet"
  type        = bool
  default     = true
}

variable "sbn_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# Variables for Route Table
######################################

variable "rt_cidr_block" {
  description = "CIDR block for the route table"
  type        = string
  default     = "0.0.0.0/0"
}

# Variables for Instance
###################################

variable "instance_ami" {
  description = "Ubuntu Server 18.04 LTS (HVM), SSD Volume Type"
  type        = string
  default     = "ami-055147723b7bca09a"
}

variable "instance_type" {
  description = "Type of the instance, t3.micro"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Name of the instance"
  type        = string
}

variable "key_pair" {
  description = "SSH Key pair used to connect"
  type        = string
  default     = "socloud-testing"
}

variable "root_device_type" {
  description = "Type of the root block device"
  type        = string
  default     = "gp2"
}

variable "root_device_size" {
  description = "Size of the root block device"
  type        = string
  default     = "8"
}
