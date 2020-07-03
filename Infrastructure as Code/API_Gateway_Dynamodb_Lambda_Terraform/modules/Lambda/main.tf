resource "aws_lambda_permission" "apigw_get_lambda" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.get_data_lambda.function_name
  principal     = "apigateway.amazonaws.com"
}

resource "aws_lambda_function" "get_data_lambda" {
  filename      = "/Users/apple/Desktop/Lambda_Functions/lambda_function.py.zip"
  function_name = "get_data_lambda"
  role          = var.my_role
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.7"
  source_code_hash = filebase64sha256("/Users/apple/Desktop/Lambda_Functions/lambda_function.py.zip")
}




resource "aws_lambda_permission" "apigw_delete_lambda" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.delete_data_lambda.function_name
  principal     = "apigateway.amazonaws.com"
}

resource "aws_lambda_function" "delete_data_lambda" {
  filename      = "/Users/apple/Desktop/Lambda_Functions/delete/lambda_function.py.zip"
  function_name = "delete_data_lambda"
  role          = var.my_role
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.7"
  source_code_hash = filebase64sha256("/Users/apple/Desktop/Lambda_Functions/delete/lambda_function.py.zip")
}





resource "aws_lambda_permission" "apigw_update_lambda" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.update_data_lambda.function_name
  principal     = "apigateway.amazonaws.com"
}

resource "aws_lambda_function" "update_data_lambda" {
  filename      = "/Users/apple/Desktop/Lambda_Functions/update/lambda_function.py.zip"
  function_name = "update_data_lambda"
  role          = var.my_role
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.7"
  source_code_hash = filebase64sha256("/Users/apple/Desktop/Lambda_Functions/update/lambda_function.py.zip")
}




resource "aws_lambda_permission" "apigw_insert_lambda" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.insert_data_lambda.function_name
  principal     = "apigateway.amazonaws.com"
}

resource "aws_lambda_function" "insert_data_lambda" {
  filename      = "/Users/apple/Desktop/Lambda_Functions/insert/lambda_function.py.zip"
  function_name = "insert_data_lambda"
  role          = var.my_role
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.7"
  source_code_hash = filebase64sha256("/Users/apple/Desktop/Lambda_Functions/insert/lambda_function.py.zip")
}


