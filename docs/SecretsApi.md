# SwaggerClient::SecretsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**backup_secret**](SecretsApi.md#backup_secret) | **POST** /secrets/{secret-name}/backup | Backs up the specified secret.
[**delete_secret**](SecretsApi.md#delete_secret) | **DELETE** /secrets/{secret-name} | Deletes a secret from a specified key vault.
[**get_secret**](SecretsApi.md#get_secret) | **GET** /secrets/{secret-name}/{secret-version} | Get a specified secret from a given key vault.
[**get_secret_versions**](SecretsApi.md#get_secret_versions) | **GET** /secrets/{secret-name}/versions | List all versions of the specified secret.
[**get_secrets**](SecretsApi.md#get_secrets) | **GET** /secrets | List secrets in a specified key vault.
[**restore_secret**](SecretsApi.md#restore_secret) | **POST** /secrets/restore | Restores a backed up secret to a vault.
[**set_secret**](SecretsApi.md#set_secret) | **PUT** /secrets/{secret-name} | Sets a secret in a specified key vault.
[**update_secret**](SecretsApi.md#update_secret) | **PATCH** /secrets/{secret-name}/{secret-version} | Updates the attributes associated with a specified secret in a given key vault.


# **backup_secret**
> BackupSecretResult backup_secret(secret_name, api_version)

Backs up the specified secret.

Requests that a backup of the specified secret be downloaded to the client. All versions of the secret will be downloaded. This operation requires the secrets/backup permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecretsApi.new

secret_name = 'secret_name_example' # String | The name of the secret.

api_version = 'api_version_example' # String | Client API version.


begin
  #Backs up the specified secret.
  result = api_instance.backup_secret(secret_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecretsApi->backup_secret: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_name** | **String**| The name of the secret. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**BackupSecretResult**](BackupSecretResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_secret**
> DeletedSecretBundle delete_secret(secret_name, api_version)

Deletes a secret from a specified key vault.

The DELETE operation applies to any secret stored in Azure Key Vault. DELETE cannot be applied to an individual version of a secret. This operation requires the secrets/delete permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecretsApi.new

secret_name = 'secret_name_example' # String | The name of the secret.

api_version = 'api_version_example' # String | Client API version.


begin
  #Deletes a secret from a specified key vault.
  result = api_instance.delete_secret(secret_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecretsApi->delete_secret: #{e}"
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



# **get_secret**
> SecretBundle get_secret(secret_name, secret_version, api_version)

Get a specified secret from a given key vault.

The GET operation is applicable to any secret stored in Azure Key Vault. This operation requires the secrets/get permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecretsApi.new

secret_name = 'secret_name_example' # String | The name of the secret.

secret_version = 'secret_version_example' # String | The version of the secret. This URI fragment is optional. If not specified, the latest version of the secret is returned.

api_version = 'api_version_example' # String | Client API version.


begin
  #Get a specified secret from a given key vault.
  result = api_instance.get_secret(secret_name, secret_version, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecretsApi->get_secret: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_name** | **String**| The name of the secret. | 
 **secret_version** | **String**| The version of the secret. This URI fragment is optional. If not specified, the latest version of the secret is returned. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**SecretBundle**](SecretBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_secret_versions**
> SecretListResult get_secret_versions(secret_name, api_version, opts)

List all versions of the specified secret.

The full secret identifier and attributes are provided in the response. No values are returned for the secrets. This operations requires the secrets/list permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecretsApi.new

secret_name = 'secret_name_example' # String | The name of the secret.

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified, the service will return up to 25 results.
}

begin
  #List all versions of the specified secret.
  result = api_instance.get_secret_versions(secret_name, api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecretsApi->get_secret_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_name** | **String**| The name of the secret. | 
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified, the service will return up to 25 results. | [optional] 

### Return type

[**SecretListResult**](SecretListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_secrets**
> SecretListResult get_secrets(api_version, opts)

List secrets in a specified key vault.

The Get Secrets operation is applicable to the entire vault. However, only the base secret identifier and its attributes are provided in the response. Individual secret versions are not listed in the response. This operation requires the secrets/list permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecretsApi.new

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified, the service will return up to 25 results.
}

begin
  #List secrets in a specified key vault.
  result = api_instance.get_secrets(api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecretsApi->get_secrets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified, the service will return up to 25 results. | [optional] 

### Return type

[**SecretListResult**](SecretListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **restore_secret**
> SecretBundle restore_secret(parameters, api_version)

Restores a backed up secret to a vault.

Restores a backed up secret, and all its versions, to a vault. This operation requires the secrets/restore permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecretsApi.new

parameters = SwaggerClient::SecretRestoreParameters.new # SecretRestoreParameters | The parameters to restore the secret.

api_version = 'api_version_example' # String | Client API version.


begin
  #Restores a backed up secret to a vault.
  result = api_instance.restore_secret(parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecretsApi->restore_secret: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**SecretRestoreParameters**](SecretRestoreParameters.md)| The parameters to restore the secret. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**SecretBundle**](SecretBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_secret**
> SecretBundle set_secret(secret_name, parameters, api_version)

Sets a secret in a specified key vault.

 The SET operation adds a secret to the Azure Key Vault. If the named secret already exists, Azure Key Vault creates a new version of that secret. This operation requires the secrets/set permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecretsApi.new

secret_name = 'secret_name_example' # String | The name of the secret.

parameters = SwaggerClient::SecretSetParameters.new # SecretSetParameters | The parameters for setting the secret.

api_version = 'api_version_example' # String | Client API version.


begin
  #Sets a secret in a specified key vault.
  result = api_instance.set_secret(secret_name, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecretsApi->set_secret: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_name** | **String**| The name of the secret. | 
 **parameters** | [**SecretSetParameters**](SecretSetParameters.md)| The parameters for setting the secret. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**SecretBundle**](SecretBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_secret**
> SecretBundle update_secret(secret_name, secret_version, parameters, api_version)

Updates the attributes associated with a specified secret in a given key vault.

The UPDATE operation changes specified attributes of an existing stored secret. Attributes that are not specified in the request are left unchanged. The value of a secret itself cannot be changed. This operation requires the secrets/set permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecretsApi.new

secret_name = 'secret_name_example' # String | The name of the secret.

secret_version = 'secret_version_example' # String | The version of the secret.

parameters = SwaggerClient::SecretUpdateParameters.new # SecretUpdateParameters | The parameters for update secret operation.

api_version = 'api_version_example' # String | Client API version.


begin
  #Updates the attributes associated with a specified secret in a given key vault.
  result = api_instance.update_secret(secret_name, secret_version, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecretsApi->update_secret: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_name** | **String**| The name of the secret. | 
 **secret_version** | **String**| The version of the secret. | 
 **parameters** | [**SecretUpdateParameters**](SecretUpdateParameters.md)| The parameters for update secret operation. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**SecretBundle**](SecretBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



