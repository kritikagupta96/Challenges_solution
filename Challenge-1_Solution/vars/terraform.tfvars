region = "ap-southeast-1"
public_key = ""
name = "aws-app-three-tier"

# VPC layer vars
vpc_azs = [ "ap-southeast-1a", "ap-southeast-1b" ]
vpc_cidr = "192.168.0.0/16"
vpc_private_subnets = ["192.168.1.0/24", "192.168.2.0/24"]
vpc_public_subnets  = ["192.168.101.0/24", "192.168.201.0/24"]
vpc_database_subnets = ["192.168.102.0/24", "192.168.202.0/24"]
vpc_enable_nat_gateway = true
vpc_single_nat_gateway = false
vpc_one_nat_gateway_per_az = true

#DB layer vars
db_identifier = ""
db_name = "dbaws"
db_username = ""
db_password = ""
db_allocated_storage = 
db_port = 
db_backup_window = 
db_backup_retention_period = 
db_maintenance_window = 


#Web layer vars
web_port = ""
web_instance_type = "" 
web_autoscale_min_size = "" 
web_autoscale_max_size = ""
#web_elb_health_check_interval = 
#web_elb_healthy_threshold = 
#web_elb_unhealthy_threshold = 
#web_elb_health_check_timeout = 

# App layer vars 
app_port = "" 
app_instance_type = ""
app_autoscale_min_size = "" 
app_autoscale_max_size = ""
#app_elb_health_check_interval = 
#app_elb_healthy_threshold = 
#app_elb_unhealthy_threshold = 
#app_elb_health_check_timeout = 
