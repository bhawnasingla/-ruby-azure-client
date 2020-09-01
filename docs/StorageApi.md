# SwaggerClient::StorageApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**backup_storage_account**](StorageApi.md#backup_storage_account) | **POST** /storage/{storage-account-name}/backup | Backs up the specified storage account.
[**delete_sas_definition**](StorageApi.md#delete_sas_definition) | **DELETE** /storage/{storage-account-name}/sas/{sas-definition-name} | 
[**delete_storage_account**](StorageApi.md#delete_storage_account) | **DELETE** /storage/{storage-account-name} | 
[**get_sas_definition**](StorageApi.md#get_sas_definition) | **GET** /storage/{storage-account-name}/sas/{sas-definition-name} | 
[**get_sas_definitions**](StorageApi.md#get_sas_definitions) | **GET** /storage/{storage-account-name}/sas | 
[**get_storage_account**](StorageApi.md#get_storage_account) | **GET** /storage/{storage-account-name} | 
[**get_storage_accounts**](StorageApi.md#get_storage_accounts) | **GET** /storage | 
[**regenerate_storage_account_key**](StorageApi.md#regenerate_storage_account_key) | **POST** /storage/{storage-account-name}/regeneratekey | 
[**restore_storage_account**](StorageApi.md#restore_storage_account) | **POST** /storage/restore | Restores a backed up storage account to a vault.
[**set_sas_definition**](StorageApi.md#set_sas_definition) | **PUT** /storage/{storage-account-name}/sas/{sas-definition-name} | 
[**set_storage_account**](StorageApi.md#set_storage_account) | **PUT** /storage/{storage-account-name} | 
[**update_sas_definition**](StorageApi.md#update_sas_definition) | **PATCH** /storage/{storage-account-name}/sas/{sas-definition-name} | 
[**update_storage_account**](StorageApi.md#update_storage_account) | **PATCH** /storage/{storage-account-name} | 


# **backup_storage_account**
> BackupStorageResult backup_storage_account(storage_account_name, api_version)

Backs up the specified storage account.

Requests that a backup of the specified storage account be downloaded to the client. This operation requires the storage/backup permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

api_version = 'api_version_example' # String | Client API version.


begin
  #Backs up the specified storage account.
  result = api_instance.backup_storage_account(storage_account_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->backup_storage_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**BackupStorageResult**](BackupStorageResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_sas_definition**
> DeletedSasDefinitionBundle delete_sas_definition(storage_account_name, sas_definition_name, api_version)



Deletes a SAS definition from a specified storage account. This operation requires the storage/deletesas permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

sas_definition_name = 'sas_definition_name_example' # String | The name of the SAS definition.

api_version = 'api_version_example' # String | Client API version.


begin
  result = api_instance.delete_sas_definition(storage_account_name, sas_definition_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->delete_sas_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **sas_definition_name** | **String**| The name of the SAS definition. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**DeletedSasDefinitionBundle**](DeletedSasDefinitionBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_storage_account**
> DeletedStorageBundle delete_storage_account(storage_account_name, api_version)



Deletes a storage account. This operation requires the storage/delete permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

api_version = 'api_version_example' # String | Client API version.


begin
  result = api_instance.delete_storage_account(storage_account_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->delete_storage_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**DeletedStorageBundle**](DeletedStorageBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sas_definition**
> SasDefinitionBundle get_sas_definition(storage_account_name, sas_definition_name, api_version)



Gets information about a SAS definition for the specified storage account. This operation requires the storage/getsas permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

sas_definition_name = 'sas_definition_name_example' # String | The name of the SAS definition.

api_version = 'api_version_example' # String | Client API version.


begin
  result = api_instance.get_sas_definition(storage_account_name, sas_definition_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->get_sas_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **sas_definition_name** | **String**| The name of the SAS definition. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**SasDefinitionBundle**](SasDefinitionBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sas_definitions**
> SasDefinitionListResult get_sas_definitions(storage_account_name, api_version, opts)



List storage SAS definitions for the given storage account. This operation requires the storage/listsas permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
}

begin
  result = api_instance.get_sas_definitions(storage_account_name, api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->get_sas_definitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 

### Return type

[**SasDefinitionListResult**](SasDefinitionListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_storage_account**
> StorageBundle get_storage_account(storage_account_name, api_version)



Gets information about a specified storage account. This operation requires the storage/get permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

api_version = 'api_version_example' # String | Client API version.


begin
  result = api_instance.get_storage_account(storage_account_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->get_storage_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**StorageBundle**](StorageBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_storage_accounts**
> StorageListResult get_storage_accounts(api_version, opts)



List storage accounts managed by the specified key vault. This operation requires the storage/list permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
}

begin
  result = api_instance.get_storage_accounts(api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->get_storage_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 

### Return type

[**StorageListResult**](StorageListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **regenerate_storage_account_key**
> StorageBundle regenerate_storage_account_key(storage_account_name, parameters, api_version)



Regenerates the specified key value for the given storage account. This operation requires the storage/regeneratekey permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

parameters = SwaggerClient::StorageAccountRegenerteKeyParameters.new # StorageAccountRegenerteKeyParameters | The parameters to regenerate storage account key.

api_version = 'api_version_example' # String | Client API version.


begin
  result = api_instance.regenerate_storage_account_key(storage_account_name, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->regenerate_storage_account_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **parameters** | [**StorageAccountRegenerteKeyParameters**](StorageAccountRegenerteKeyParameters.md)| The parameters to regenerate storage account key. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**StorageBundle**](StorageBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **restore_storage_account**
> StorageBundle restore_storage_account(parameters, api_version)

Restores a backed up storage account to a vault.

Restores a backed up storage account to a vault. This operation requires the storage/restore permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

parameters = SwaggerClient::StorageRestoreParameters.new # StorageRestoreParameters | The parameters to restore the storage account.

api_version = 'api_version_example' # String | Client API version.


begin
  #Restores a backed up storage account to a vault.
  result = api_instance.restore_storage_account(parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->restore_storage_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**StorageRestoreParameters**](StorageRestoreParameters.md)| The parameters to restore the storage account. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**StorageBundle**](StorageBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_sas_definition**
> SasDefinitionBundle set_sas_definition(storage_account_name, sas_definition_name, parameters, api_version)



Creates or updates a new SAS definition for the specified storage account. This operation requires the storage/setsas permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

sas_definition_name = 'sas_definition_name_example' # String | The name of the SAS definition.

parameters = SwaggerClient::SasDefinitionCreateParameters.new # SasDefinitionCreateParameters | The parameters to create a SAS definition.

api_version = 'api_version_example' # String | Client API version.


begin
  result = api_instance.set_sas_definition(storage_account_name, sas_definition_name, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->set_sas_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **sas_definition_name** | **String**| The name of the SAS definition. | 
 **parameters** | [**SasDefinitionCreateParameters**](SasDefinitionCreateParameters.md)| The parameters to create a SAS definition. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**SasDefinitionBundle**](SasDefinitionBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_storage_account**
> StorageBundle set_storage_account(storage_account_name, parameters, api_version)



Creates or updates a new storage account. This operation requires the storage/set permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

parameters = SwaggerClient::StorageAccountCreateParameters.new # StorageAccountCreateParameters | The parameters to create a storage account.

api_version = 'api_version_example' # String | Client API version.


begin
  result = api_instance.set_storage_account(storage_account_name, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->set_storage_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **parameters** | [**StorageAccountCreateParameters**](StorageAccountCreateParameters.md)| The parameters to create a storage account. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**StorageBundle**](StorageBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_sas_definition**
> SasDefinitionBundle update_sas_definition(storage_account_name, sas_definition_name, parameters, api_version)



Updates the specified attributes associated with the given SAS definition. This operation requires the storage/setsas permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

sas_definition_name = 'sas_definition_name_example' # String | The name of the SAS definition.

parameters = SwaggerClient::SasDefinitionUpdateParameters.new # SasDefinitionUpdateParameters | The parameters to update a SAS definition.

api_version = 'api_version_example' # String | Client API version.


begin
  result = api_instance.update_sas_definition(storage_account_name, sas_definition_name, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->update_sas_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **sas_definition_name** | **String**| The name of the SAS definition. | 
 **parameters** | [**SasDefinitionUpdateParameters**](SasDefinitionUpdateParameters.md)| The parameters to update a SAS definition. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**SasDefinitionBundle**](SasDefinitionBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_storage_account**
> StorageBundle update_storage_account(storage_account_name, parameters, api_version)



Updates the specified attributes associated with the given storage account. This operation requires the storage/set/update permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

parameters = SwaggerClient::StorageAccountUpdateParameters.new # StorageAccountUpdateParameters | The parameters to update a storage account.

api_version = 'api_version_example' # String | Client API version.


begin
  result = api_instance.update_storage_account(storage_account_name, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StorageApi->update_storage_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **parameters** | [**StorageAccountUpdateParameters**](StorageAccountUpdateParameters.md)| The parameters to update a storage account. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**StorageBundle**](StorageBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



