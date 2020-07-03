# aws_sam_lambda_api
Testing a serverless Nodejs application and deploying it to AWS Cloud using AWS Serverless Application Model.


## Pre Reqs

Following pre requisites are necessary for proper understanding:
- AWS SAM
- SAM cli
- AWS Lambda
- AWS Api Gateway
- AWS Cloudformation



## Files
This repository consists of following files:

1.app.js: contains JSON body for the application response/request.

2.package.json: contains packages and their dependencies for the application.

3.lambda.yaml: a Cloudformation template for serverless resource (lambda function).

4.sam-template: a Cloudformation template created after building the project using aws sam.


## Explanation

In this project, we are creating a serverless application using AWS sam. Aws sam generally handles the local testing
by invoking the lambda and producing the output on localhost. It actually replicates the behaviour of the application
as it should behave when deployed to AWS Cloud. In lambda.yaml, we are creating a serverless function, which is basically
a lambda function with an event of API Gateway using GET method. AWS sam then builds the template to then test the functionality
locally. A new CFN template will be generated when you package the project using sam package command. It will contain the Code URI,
place where the build artifact is placed.


## Required Commands

### AWS SAM CLI
    sam init:     Initialize a sam working directory.
    sam build --template lambda.yaml : Build sam environment
    sam local invoke: Invoke the function for testing the desired output
    sam local start-api: Initiates local testing of API get method,output
                         of this command would be a curl command.
    sam package --template-file ./lambda.yaml --output-template-file sam-template.yaml \
    s3-bucket <you-s3-bucket> : packages the project for the artifacts.
    sam deploy --guided OR sam deploy --template-file sam-template.yaml stack-name sam-stack \
    --capabilities CAPABILITY_IAM: deploy the resources to AWS Cloud using Cloudformation stacks.




