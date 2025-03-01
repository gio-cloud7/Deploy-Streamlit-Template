# Deploy-Streamlit-Template
Accelerate Serverless Streamlit App Deployment with Terraform

https://aws.amazon.com/blogs/devops/accelerate-serverless-streamlit-app-deployment-with-terraform/


This repository builds on the post referenced above. This is a template with a working example. 

One possible workflow to implement the code is outlied below but the template can be adapted and implemented in other ways as well based on the use case.


Using AWS to create a terrafrom instance (if one is not already available)


1) Launch amazon linux instance
   
	(ssh aaccess from anywhere if temporary or specific IP for longer term usage)



2) On the instance execute the following to create Terraform environment:

	sudo yum install -y yum-utils  
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo  
	sudo yum -y install terraform  




3) Create Terraform directory

	mkdir template  
	cd template




4) Clone the template repo to the Terraform directory

	git clone https://github.com/gio-cloud7/Deploy-Streamlit-Template.git




5)Prepare Authentication and Access method for Terraform to AWS (Account needed - crate IAM user and then create Access key)

	aws configure

	Provide Access Key
	Provide Secret Access Key
	Type 'us-east-1' or alternative desired AWS region
	press enter for default




6) Execute Terraform workflow to deploy

	terraform init  
	terraform plan  
	terraform apply  



8) AFTER Terraform execution complete
	Wait an additional 5 to 10 minutes to allow for pipeline to fully
	Use the url provided by Terrafrom output to access the streamlit application
	Feel free to explore AWS console codebuild, EKS, to see the various componets andunderstad how they work



9) Remove infrastructure if no longer needed
    terraform destroy








