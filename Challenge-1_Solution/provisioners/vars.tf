variable "region" {
  description = "AWS region"
  default = "ap-southeast-1"
}

variable "bucket_name" {
   description = "Bucket name for statefile storage"
   default = "awswebappdb"
}


variable "dynamodb_name" {
  description = "Dynamo DB Name for state file"
  default = "dblock"
}

variable "name" {
  description = "The name of the deployment"
  default = ""
}

variable "public_key" {
  default = ""
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overriden"
  default     = "192.168.0.0/16"
}

variable "vpc_public_subnets" {
  description = "public subnets list present in the VPC"
  default     = []
}

variable "vpc_private_subnets" {
  description = "private subnets list present in the VPC"
  default     = []
}

variable "vpc_database_subnets" {
  type        = "list"
  description = "database subnets list"
  default     = []
}

variable "vpc_azs" {
  description = "availability zones list present in the region"
  default     = []
}

variable "vpc_enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  default     = false
}

variable "vpc_single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  default     = false
}

variable "vpc_one_nat_gateway_per_az" {
  description = "Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs`."
  default     = false
}

variable "db_identifier" {
  description = "The name of the RDS instance"
  default = ""
}

variable "db_allocated_storage" {
  description = "allocated storage (in GB)"
  default = 5
}

variable "db_name" {
  description = "Name of the DB"
  default = ""
}

variable "db_username" {
  description = "Master DB user name"
  default = ""
  sensitive = true
}

variable "db_password" {
  description = "Master DB password"
  default = ""
  sensitive = true
}

variable "db_port" {
  description = "DB connection port"
  default = 5432
}

variable "db_maintenance_window" {
  description = "Maintenence window timing"
  default = "Sun:00:00-Sun:03:00"
}

variable "var.db_deletion_protection" {
  description = "Database deletion protection are created if they are enabled"
  default = true
}

variable "db_backup_window" {
  description = "The daily time range (in UTC) for automated backups if enabled"
  default = "01:00-03:00"
}

variable "db_backup_retention_period" {
  description = "The days to retain backups for"
  default = 0
}

variable "web_port" {
  description = "web servers listener port for connections"
  default = 80
}

variable "web_instance_type" {
  description = "The EC2 instance type for the web servers"
  default = "t2.micro"
}

variable "web_autoscale_min_size" {
  description = "The fewest amount of EC2 instances to start"
  default = 2
}

variable "web_autoscale_max_size" {
  description = "The largest amount of EC2 instances to start"
  default = 3
}

variable "web_elb_health_check_interval" {
  description = "Duration between health checks"
  default = 20
}

variable "web_elb_healthy_threshold" {
  description = "Number of checks before an instance is declared healthy"
  default = 2
}

variable "web_elb_unhealthy_threshold" {
  description = "Number of checks before an instance is declared unhealthy"
  default = 2
}

variable "web_elb_health_check_timeout" {
  description = "Interval between checks"
  default = 5
}

variable "app_port" {
  description = "application listener port for connections"
  default = 8080
}

variable "app_instance_type" {
  description = "Ec2 instance type for the application servers"
  default = "t2.micro"
}

variable "app_autoscale_min_size" {
  description = "The least amount of EC2 instances to start"
  default = 2
}

variable "app_autoscale_max_size" {
  description = "The largest amount of EC2 instances to start"
  default = 3
}

variable "app_elb_health_check_interval" {
  description = "Duration between health checks"
  default = 20
}

variable "app_elb_healthy_threshold" {
  description = "Number of checks before an instance is declared healthy"
  default = 2
}

variable "app_elb_unhealthy_threshold" {
  description = "Number of checks before an instance is declared unhealthy"
  default = 2
}

variable "app_elb_health_check_timeout" {
  description = "Interval between checks"
  default = 5
}
