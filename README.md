# Deploy-Streamlit-Template
Accelerate Serverless Streamlit App Deployment with Terraform

https://aws.amazon.com/blogs/devops/accelerate-serverless-streamlit-app-deployment-with-terraform/


This repository builds on the post referenced above. This is a template with a working example. 

One possible workflow to implement the code is outlied below but the template can be adapted and implemented in other ways as well based on the use case.


Using AWS to create a terrafrom instance (if one is not already available)



1) Launch amazon linux instance ssh (from anywhere if temporary or specific IP for longer term usage)

2)On the instance execute the following to create Terraform environment:

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform



3)Create Terraform directory

mkdir template
cd template



4) Clone the template repo to the Terraform directory

git clone




5)Prepare auth and access to AWS (Account needed)

aws configure

Provide key
Provide secret key
us-east-1 or relevant region
press enter


6) Execute Terraform workflow to deploy

terraform init
tf plan
tf apply


7) AFTER Terraform execution complete
    Wait an additional 5 to 10 minutes to allow for pipeline to fully
    Use the url provided by Terrafrom output to access the streamlit application
   Feel free to explore AWS console codebuild, EKS, to see the various componets andunderstad how they work








