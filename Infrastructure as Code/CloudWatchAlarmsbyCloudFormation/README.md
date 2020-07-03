# CloudWatchAlarmsbyCloudFormation
Creating CloudWatch Alarms using CloudFormation and pushing metrics to datadog via datadog agent.

## Contents

    A custom VPC and EC2 public instance is created in this project. Moreover, three types of alarms are provisioned 
    which are as follows:
      1. CPUUtilization Alarm 
      2. MemoryUsed Alarm 
      3. DiskUsed Alarm
    CPUUtilizaion alarm metric is provided by AWS platform and rest of the two metrics are custom based.
    We have used CloudWatch Agent for pushing custom metrics to CloudWatch
    Moreover, a datadog-agent is also installed in the EC2 instance and the metrics are pushed to datadog
    immediately using API_Key.
    
## Files
    Following are the files for this project:
     1. vpc and ec2.yaml
     2. alarms.yaml
     3. config.json
    
    First, VPC and EC2 template is uploaded to create the infrastructure and power up the instance. Then,
    alarms template is uploaded ,thus, creating alarms. The config.json file contains required configuration
    for the cloudwatch agent.



