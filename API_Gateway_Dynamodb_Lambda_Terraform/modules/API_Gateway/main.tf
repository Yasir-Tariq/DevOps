#Creating a REST API
resource "aws_api_gateway_rest_api" "MyAPI" {
  name        = var.api
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}
#Creating a resource to fetch data 
resource "aws_api_gateway_resource" "GetDataResource" {
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  parent_id   = aws_api_gateway_rest_api.MyAPI.root_resource_id
  path_part   = "getdataresource"
}
#Creating a GET method to get data
resource "aws_api_gateway_method" "GetDataMethod" {
  rest_api_id   = aws_api_gateway_rest_api.MyAPI.id
  resource_id   = aws_api_gateway_resource.GetDataResource.id
  http_method   = "GET"
  authorization = "NONE"
}
#Creating a success response to get data
resource "aws_api_gateway_method_response" "get_response_200" {
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  resource_id = aws_api_gateway_resource.GetDataResource.id
  http_method = aws_api_gateway_method.GetDataMethod.http_method
  status_code = "200"
}
#Creating Integration for getting data
resource "aws_api_gateway_integration" "GetDataIntegration" {
  rest_api_id             = aws_api_gateway_rest_api.MyAPI.id
  resource_id             = aws_api_gateway_resource.GetDataResource.id
  http_method             = aws_api_gateway_method.GetDataMethod.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.invoke_arn_get_data
}
#Creating Integration Response to Get data
resource "aws_api_gateway_integration_response" "GetDataIntegrationResponse" {
  depends_on = [aws_api_gateway_integration.GetDataIntegration]
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  resource_id = aws_api_gateway_resource.GetDataResource.id
  http_method = aws_api_gateway_method.GetDataMethod.http_method
  status_code = aws_api_gateway_method_response.get_response_200.status_code
}



#Creating Method and Configuration for Delete Data

resource "aws_api_gateway_resource" "DeleteDataResource" {
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  parent_id   = aws_api_gateway_rest_api.MyAPI.root_resource_id
  path_part   = "deletedataresource"
}



#Creating a Delete method to delete data
resource "aws_api_gateway_method" "DeleteDataMethod" {
  rest_api_id   = aws_api_gateway_rest_api.MyAPI.id
  resource_id   = aws_api_gateway_resource.DeleteDataResource.id
  http_method   = "DELETE"
  authorization = "NONE"
}
#Creating a success response to delete data
resource "aws_api_gateway_method_response" "delete_response_200" {
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  resource_id = aws_api_gateway_resource.DeleteDataResource.id
  http_method = aws_api_gateway_method.DeleteDataMethod.http_method
  status_code = "200"
}
#Creating Integration for deleting data
resource "aws_api_gateway_integration" "DeleteDataIntegration" {
  rest_api_id             = aws_api_gateway_rest_api.MyAPI.id
  resource_id             = aws_api_gateway_resource.DeleteDataResource.id
  http_method             = aws_api_gateway_method.DeleteDataMethod.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.invoke_arn_delete_data
}

#Creating Integration Response to Delete data

resource "aws_api_gateway_integration_response" "DeleteDataIntegrationResponse" {
  depends_on = [aws_api_gateway_integration.DeleteDataIntegration]
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  resource_id = aws_api_gateway_resource.DeleteDataResource.id
  http_method = aws_api_gateway_method.DeleteDataMethod.http_method
  status_code = aws_api_gateway_method_response.delete_response_200.status_code
}





#Creating Method and Configuration for Updating Data

resource "aws_api_gateway_resource" "UpdateDataResource" {
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  parent_id   = aws_api_gateway_rest_api.MyAPI.root_resource_id
  path_part   = "updatedataresource"
}



#Creating a update method to update data
resource "aws_api_gateway_method" "UpdateDataMethod" {
  rest_api_id   = aws_api_gateway_rest_api.MyAPI.id
  resource_id   = aws_api_gateway_resource.UpdateDataResource.id
  http_method   = "PATCH"
  authorization = "NONE"
}
#Creating a success response to update data
resource "aws_api_gateway_method_response" "update_response_200" {
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  resource_id = aws_api_gateway_resource.UpdateDataResource.id
  http_method = aws_api_gateway_method.UpdateDataMethod.http_method
  status_code = "200"
}
#Creating Integration for updating data
resource "aws_api_gateway_integration" "UpdateDataIntegration" {
  rest_api_id             = aws_api_gateway_rest_api.MyAPI.id
  resource_id             = aws_api_gateway_resource.UpdateDataResource.id
  http_method             = aws_api_gateway_method.UpdateDataMethod.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.invoke_arn_update_data
}

#Creating Integration Response to Update data

resource "aws_api_gateway_integration_response" "UpdateDataIntegrationResponse" {
  depends_on = [aws_api_gateway_integration.UpdateDataIntegration]
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  resource_id = aws_api_gateway_resource.UpdateDataResource.id
  http_method = aws_api_gateway_method.UpdateDataMethod.http_method
  status_code = aws_api_gateway_method_response.update_response_200.status_code
}




















#Creating Method and Configuration for Inserting Data

resource "aws_api_gateway_resource" "InsertDataResource" {
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  parent_id   = aws_api_gateway_rest_api.MyAPI.root_resource_id
  path_part   = "insertdataresource"
}



#Creating an insert method to insert data
resource "aws_api_gateway_method" "InsertDataMethod" {
  rest_api_id   = aws_api_gateway_rest_api.MyAPI.id
  resource_id   = aws_api_gateway_resource.InsertDataResource.id
  http_method   = "POST"
  authorization = "NONE"
}
#Creating a success response to insert data
resource "aws_api_gateway_method_response" "insert_response_200" {
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  resource_id = aws_api_gateway_resource.InsertDataResource.id
  http_method = aws_api_gateway_method.InsertDataMethod.http_method
  status_code = "200"
}
#Creating Integration for inserting data
resource "aws_api_gateway_integration" "InsertDataIntegration" {
  rest_api_id             = aws_api_gateway_rest_api.MyAPI.id
  resource_id             = aws_api_gateway_resource.InsertDataResource.id
  http_method             = aws_api_gateway_method.InsertDataMethod.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.invoke_arn_insert_data
}

#Creating Integration Response to Insert data

resource "aws_api_gateway_integration_response" "InsertDataIntegrationResponse" {
  depends_on = [aws_api_gateway_integration.InsertDataIntegration]
  rest_api_id = aws_api_gateway_rest_api.MyAPI.id
  resource_id = aws_api_gateway_resource.InsertDataResource.id
  http_method = aws_api_gateway_method.InsertDataMethod.http_method
  status_code = aws_api_gateway_method_response.insert_response_200.status_code
}




