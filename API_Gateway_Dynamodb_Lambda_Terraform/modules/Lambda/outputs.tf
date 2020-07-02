output "invokearn_get_data" {
  value = aws_lambda_function.get_data_lambda.invoke_arn
}
output "invokearn_delete_data" {
  value = aws_lambda_function.delete_data_lambda.invoke_arn
}
output "invokearn_update_data" {
  value = aws_lambda_function.update_data_lambda.invoke_arn
}
output "invokearn_insert_data" {
  value = aws_lambda_function.insert_data_lambda.invoke_arn
}


