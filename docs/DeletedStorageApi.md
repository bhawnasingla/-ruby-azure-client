# SwaggerClient::DeletedStorageApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_deleted_sas_definition**](DeletedStorageApi.md#get_deleted_sas_definition) | **GET** /deletedstorage/{storage-account-name}/sas/{sas-definition-name} | Gets the specified deleted sas definition.
[**get_deleted_sas_definitions**](DeletedStorageApi.md#get_deleted_sas_definitions) | **GET** /deletedstorage/{storage-account-name}/sas | Lists deleted SAS definitions for the specified vault and storage account.
[**get_deleted_storage_account**](DeletedStorageApi.md#get_deleted_storage_account) | **GET** /deletedstorage/{storage-account-name} | Gets the specified deleted storage account.
[**get_deleted_storage_accounts**](DeletedStorageApi.md#get_deleted_storage_accounts) | **GET** /deletedstorage | Lists deleted storage accounts for the specified vault.
[**purge_deleted_storage_account**](DeletedStorageApi.md#purge_deleted_storage_account) | **DELETE** /deletedstorage/{storage-account-name} | Permanently deletes the specified storage account.
[**recover_deleted_sas_definition**](DeletedStorageApi.md#recover_deleted_sas_definition) | **POST** /deletedstorage/{storage-account-name}/sas/{sas-definition-name}/recover | Recovers the deleted SAS definition.
[**recover_deleted_storage_account**](DeletedStorageApi.md#recover_deleted_storage_account) | **POST** /deletedstorage/{storage-account-name}/recover | Recovers the deleted storage account.


# **get_deleted_sas_definition**
> DeletedSasDefinitionBundle get_deleted_sas_definition(storage_account_name, sas_definition_name, api_version)

Gets the specified deleted sas definition.

The Get Deleted SAS Definition operation returns the specified deleted SAS definition along with its attributes. This operation requires the storage/getsas permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedStorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

sas_definition_name = 'sas_definition_name_example' # String | The name of the SAS definition.

api_version = 'api_version_example' # String | Client API version.


begin
  #Gets the specified deleted sas definition.
  result = api_instance.get_deleted_sas_definition(storage_account_name, sas_definition_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedStorageApi->get_deleted_sas_definition: #{e}"
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



# **get_deleted_sas_definitions**
> DeletedSasDefinitionListResult get_deleted_sas_definitions(storage_account_name, api_version, opts)

Lists deleted SAS definitions for the specified vault and storage account.

The Get Deleted Sas Definitions operation returns the SAS definitions that have been deleted for a vault enabled for soft-delete. This operation requires the storage/listsas permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedStorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
}

begin
  #Lists deleted SAS definitions for the specified vault and storage account.
  result = api_instance.get_deleted_sas_definitions(storage_account_name, api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedStorageApi->get_deleted_sas_definitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 

### Return type

[**DeletedSasDefinitionListResult**](DeletedSasDefinitionListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_deleted_storage_account**
> DeletedStorageBundle get_deleted_storage_account(storage_account_name, api_version)

Gets the specified deleted storage account.

The Get Deleted Storage Account operation returns the specified deleted storage account along with its attributes. This operation requires the storage/get permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedStorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

api_version = 'api_version_example' # String | Client API version.


begin
  #Gets the specified deleted storage account.
  result = api_instance.get_deleted_storage_account(storage_account_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedStorageApi->get_deleted_storage_account: #{e}"
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



# **get_deleted_storage_accounts**
> DeletedStorageListResult get_deleted_storage_accounts(api_version, opts)

Lists deleted storage accounts for the specified vault.

The Get Deleted Storage Accounts operation returns the storage accounts that have been deleted for a vault enabled for soft-delete. This operation requires the storage/list permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedStorageApi.new

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
}

begin
  #Lists deleted storage accounts for the specified vault.
  result = api_instance.get_deleted_storage_accounts(api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedStorageApi->get_deleted_storage_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 

### Return type

[**DeletedStorageListResult**](DeletedStorageListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **purge_deleted_storage_account**
> purge_deleted_storage_account(storage_account_name, api_version)

Permanently deletes the specified storage account.

The purge deleted storage account operation removes the secret permanently, without the possibility of recovery. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/purge permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedStorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

api_version = 'api_version_example' # String | Client API version.


begin
  #Permanently deletes the specified storage account.
  api_instance.purge_deleted_storage_account(storage_account_name, api_version)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedStorageApi->purge_deleted_storage_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_account_name** | **String**| The name of the storage account. | 
 **api_version** | **String**| Client API version. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **recover_deleted_sas_definition**
> SasDefinitionBundle recover_deleted_sas_definition(storage_account_name, sas_definition_name, api_version)

Recovers the deleted SAS definition.

Recovers the deleted SAS definition for the specified storage account. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/recover permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedStorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

sas_definition_name = 'sas_definition_name_example' # String | The name of the SAS definition.

api_version = 'api_version_example' # String | Client API version.


begin
  #Recovers the deleted SAS definition.
  result = api_instance.recover_deleted_sas_definition(storage_account_name, sas_definition_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedStorageApi->recover_deleted_sas_definition: #{e}"
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



# **recover_deleted_storage_account**
> StorageBundle recover_deleted_storage_account(storage_account_name, api_version)

Recovers the deleted storage account.

Recovers the deleted storage account in the specified vault. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/recover permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedStorageApi.new

storage_account_name = 'storage_account_name_example' # String | The name of the storage account.

api_version = 'api_version_example' # String | Client API version.


begin
  #Recovers the deleted storage account.
  result = api_instance.recover_deleted_storage_account(storage_account_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedStorageApi->recover_deleted_storage_account: #{e}"
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



