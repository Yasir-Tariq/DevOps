# IAM Role for lambda permission to access dynamo db and API Gateway
resource "aws_iam_role" "role" {
  name = var.role_name

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "api_Dynamo_policy" {
  name        = var.policy_name
  path        = "/"
  description = "api gateway and dynamodb access"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dynamodb:PutItem",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:DeleteItem",
        "dynamodb:UpdateItem",
        "apigateway:POST",
        "apigateway:GET",
        "apigateway:DELETE",
        "apigateway:PATCH"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
resource "aws_iam_policy_attachment" "role-attach" {
  name       = var.policy_attachment
  roles      = [aws_iam_role.role.name]
  policy_arn = aws_iam_policy.api_Dynamo_policy.arn
}