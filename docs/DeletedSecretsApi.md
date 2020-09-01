# SwaggerClient::DeletedSecretsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_deleted_secret**](DeletedSecretsApi.md#get_deleted_secret) | **GET** /deletedsecrets/{secret-name} | Gets the specified deleted secret.
[**get_deleted_secrets**](DeletedSecretsApi.md#get_deleted_secrets) | **GET** /deletedsecrets | Lists deleted secrets for the specified vault.
[**purge_deleted_secret**](DeletedSecretsApi.md#purge_deleted_secret) | **DELETE** /deletedsecrets/{secret-name} | Permanently deletes the specified secret.
[**recover_deleted_secret**](DeletedSecretsApi.md#recover_deleted_secret) | **POST** /deletedsecrets/{secret-name}/recover | Recovers the deleted secret to the latest version.


# **get_deleted_secret**
> DeletedSecretBundle get_deleted_secret(secret_name, api_version)

Gets the specified deleted secret.

The Get Deleted Secret operation returns the specified deleted secret along with its attributes. This operation requires the secrets/get permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedSecretsApi.new

secret_name = 'secret_name_example' # String | The name of the secret.

api_version = 'api_version_example' # String | Client API version.


begin
  #Gets the specified deleted secret.
  result = api_instance.get_deleted_secret(secret_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedSecretsApi->get_deleted_secret: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_name** | **String**| The name of the secret. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**DeletedSecretBundle**](DeletedSecretBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_deleted_secrets**
> DeletedSecretListResult get_deleted_secrets(api_version, opts)

Lists deleted secrets for the specified vault.

The Get Deleted Secrets operation returns the secrets that have been deleted for a vault enabled for soft-delete. This operation requires the secrets/list permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedSecretsApi.new

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
}

begin
  #Lists deleted secrets for the specified vault.
  result = api_instance.get_deleted_secrets(api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedSecretsApi->get_deleted_secrets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 

### Return type

[**DeletedSecretListResult**](DeletedSecretListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **purge_deleted_secret**
> purge_deleted_secret(secret_name, api_version)

Permanently deletes the specified secret.

The purge deleted secret operation removes the secret permanently, without the possibility of recovery. This operation can only be enabled on a soft-delete enabled vault. This operation requires the secrets/purge permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedSecretsApi.new

secret_name = 'secret_name_example' # String | The name of the secret.

api_version = 'api_version_example' # String | Client API version.


begin
  #Permanently deletes the specified secret.
  api_instance.purge_deleted_secret(secret_name, api_version)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedSecretsApi->purge_deleted_secret: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_name** | **String**| The name of the secret. | 
 **api_version** | **String**| Client API version. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **recover_deleted_secret**
> SecretBundle recover_deleted_secret(secret_name, api_version)

Recovers the deleted secret to the latest version.

Recovers the deleted secret in the specified vault. This operation can only be performed on a soft-delete enabled vault. This operation requires the secrets/recover permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedSecretsApi.new

secret_name = 'secret_name_example' # String | The name of the deleted secret.

api_version = 'api_version_example' # String | Client API version.


begin
  #Recovers the deleted secret to the latest version.
  result = api_instance.recover_deleted_secret(secret_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedSecretsApi->recover_deleted_secret: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_name** | **String**| The name of the deleted secret. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**SecretBundle**](SecretBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



