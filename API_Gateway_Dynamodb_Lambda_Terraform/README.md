# API_Gateway_Dynamodb_Lambda_Terraform
Provisioning API Gateway along with DynamoDB and Lambda functions using Terraform


## Files
    This Repository consists of four modules along with their necessary files(main.tf,vars.tf,outputs.tf).
      1.API_Gateway
      2.DynamoDB
      3.IAM
      4.Lambda
      
    info.tfvars is also set to provide user based values.
    Root files where all the modules are being called are as follows:
      1.main.tf
      2.vars.tf
      3.outputs.tf
   
### 1. Module API_Gateway
    In this module, resources for the sake of Restful API creation are placed which includes http methods,
    integrations,responses etc.
### 2. Module DynamoDB
    In this module, a DynamoDB table is created used to perform database operation like get,insert,
    update and delete data.
### 3. Module IAM
    It contains an IAM roles with respective policies necessary to permit lambda to invoke API Gateway.
### 4. Module Lambda
    In this module, four lambda functions are created.
