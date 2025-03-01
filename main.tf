module "serverless-streamlit-app" {
  source          = "aws-ia/serverless-streamlit-app/aws"
  app_name        = "template-app"
  app_version     = "v1.1.0" 
  path_to_app_dir = "./app" # Replace with path to your app
  
  
}
