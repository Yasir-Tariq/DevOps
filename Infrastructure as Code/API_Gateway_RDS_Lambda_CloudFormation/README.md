# API_Gateway_RDS_Lambda_CloudFormation
Provisioning API Gateway along with RDS and Lambda functions using CloudFormation.


## Files
    This Repository consists of four templates which are as follows:
      1.RDS.yaml
      2.IAM.yaml
      3.Lambda.yaml
      4.API_Gateway.yaml
    Make sure to create stacks based on the above sequence.


### 1. RDS.yaml
    In this template, an RDS instance is created with all necessary properties required to perform
    database operations using MYSQL engine.
### 2. IAM.yaml
    It contains an IAM roles with respective policies necessary to permit lambda to invoke API Gateway.
### 3. Lambda.yaml
    Four lambda functions are created.
### 4. API_Gateway.yaml
    In this template, an API Gateway is created along with necessary http methods such as GET,POST,DELETE
    and PATCH.
