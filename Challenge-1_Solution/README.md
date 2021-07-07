Created a terraform template for a 3-tier application and deploy a sample application on it using modules approch.
 1. Architecture Diagram for reference is attached in this folder
 2. Application folder has been taken from the google source to show how an application has been deployed on infrastructure
 3. In the vars section, terraform.tfvars is present 
 4. Provisioners section has belows files in it :
     a. provider.tf file for initiazing the aws provider
     b. main.tf file for s3 buckett and dynamodb table for storing the terraform state file in backend
     c. backend.tf file for storing backend configuration and state file  
     d. data.tf file for the data of AMI
     e. vpc.tf file for creating the vpc, public, private subnets and NAT gateway
     f. web-asg.tf for creating security group, launching the configuration and creating auto scaling group for front-end.
     g. app-asg.tf for creating security group, launching the configuration and auto scaling group for application-end.
     h. web-ser-elb.tf for creating security group and elastic load balancer for front-end.
     i. app-ser-elb.tf for creating security group and elastic load balancer for app-end. 
     j. rds.tf for creating rds with postgresgl. 
     h. variables.tf for list of all the variables along with its description type

