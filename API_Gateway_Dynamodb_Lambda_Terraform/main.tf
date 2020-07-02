provider "aws" {
    region = var.region
    profile = "default"
}

module "MyAPI" {
    source = "./modules/API_Gateway"    
    api = var.api
    invoke_arn_get_data = module.lambda.invokearn_get_data
    invoke_arn_delete_data = module.lambda.invokearn_delete_data
    invoke_arn_update_data = module.lambda.invokearn_update_data
    invoke_arn_insert_data = module.lambda.invokearn_insert_data
}
module "lambda" {
  source = "./modules/Lambda"
  my_role = module.IAM.my_role
}
module "dynamo" {
  source = "./modules/DynamoDB"
  dbname = var.dbname
}
module "IAM" {
  source = "./modules/IAM"
  role_name = var.role_name
  policy_name = var.policy_name
  policy_attachment = var.policy_attachment
}
