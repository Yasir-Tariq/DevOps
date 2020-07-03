# aws_serverless_framework_lambda_api
Testing a serverless Nodejs application and deploying it to AWS Cloud using AWS Serverless Framework



## Version

### Serverless Framework
Framework Core: 1.65.0

Plugin: 3.4.1

SDK: 2.3.0

Components: 2.22.3 


## Pre Reqs

Following pre requisites are necessary for proper understanding:
- Serverless framework and CLI
- AWS Lambda
- AWS Api Gateway
- AWS Cloudformation


## Plugins

Following plugin is required: (If you wish to carry on with Canary Deployment and using Aliases)

1.serverless-plugin-canary-deployments, version 0.4.8


## Files
This repository consists of following files:

1.handler.js: contains JSON body for the application response/request.

2.package.json: contains packages and their dependencies for the application.

3.serverless.yml: a Cloudformation template for serverless resource (lambda function).


## Explanation

In this project, we are creating a serverless application using Serverless Framework.
It is an open source framework which allows integration with different providers such as AWS,Azure etc.
It generally handles the local testing by invoking the lambda and producing the output on localhost. 
It actually replicates the behaviour of the application as it should behave when deployed to AWS Cloud.
In serverless.yml, we are creating a serverless function, which is basically a lambda function with an
event of API Gateway using GET method. the framework then builds the template to then test the functionality
locally. You specify the provider for the resources which, in our scenario, is the AWS. For canary deployment 
strategy, we have to install it before hand (command in the last section).


## Required Commands

### Serverless Framework CLI
    sls plugin install --name serverless-plugin-canary-deployments
    sls create --template aws-nodejs : create a nodejs powered yaml template for a service.
    sls invoke local -f my-app: to locally test the function of a service.
    sls invoke -f my-app: to test the deployed function of a service.
    sls deploy: to deploy your service with functions. (it has packaging command in the background as well)
    sls package: to explicitly package the build to generate an artifact to be stored statically in s3 bucket.



