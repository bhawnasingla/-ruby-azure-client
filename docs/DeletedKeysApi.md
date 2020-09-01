# SwaggerClient::DeletedKeysApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_deleted_key**](DeletedKeysApi.md#get_deleted_key) | **GET** /deletedkeys/{key-name} | Gets the public part of a deleted key.
[**get_deleted_keys**](DeletedKeysApi.md#get_deleted_keys) | **GET** /deletedkeys | Lists the deleted keys in the specified vault.
[**purge_deleted_key**](DeletedKeysApi.md#purge_deleted_key) | **DELETE** /deletedkeys/{key-name} | Permanently deletes the specified key.
[**recover_deleted_key**](DeletedKeysApi.md#recover_deleted_key) | **POST** /deletedkeys/{key-name}/recover | Recovers the deleted key to its latest version.


# **get_deleted_key**
> DeletedKeyBundle get_deleted_key(key_name, api_version)

Gets the public part of a deleted key.

The Get Deleted Key operation is applicable for soft-delete enabled vaults. While the operation can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled vault. This operation requires the keys/get permission. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedKeysApi.new

key_name = 'key_name_example' # String | The name of the key.

api_version = 'api_version_example' # String | Client API version.


begin
  #Gets the public part of a deleted key.
  result = api_instance.get_deleted_key(key_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedKeysApi->get_deleted_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_name** | **String**| The name of the key. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**DeletedKeyBundle**](DeletedKeyBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_deleted_keys**
> DeletedKeyListResult get_deleted_keys(api_version, opts)

Lists the deleted keys in the specified vault.

Retrieves a list of the keys in the Key Vault as JSON Web Key structures that contain the public part of a deleted key. This operation includes deletion-specific information. The Get Deleted Keys operation is applicable for vaults enabled for soft-delete. While the operation can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled vault. This operation requires the keys/list permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedKeysApi.new

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
}

begin
  #Lists the deleted keys in the specified vault.
  result = api_instance.get_deleted_keys(api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedKeysApi->get_deleted_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 

### Return type

[**DeletedKeyListResult**](DeletedKeyListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **purge_deleted_key**
> purge_deleted_key(key_name, api_version)

Permanently deletes the specified key.

The Purge Deleted Key operation is applicable for soft-delete enabled vaults. While the operation can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled vault. This operation requires the keys/purge permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedKeysApi.new

key_name = 'key_name_example' # String | The name of the key

api_version = 'api_version_example' # String | Client API version.


begin
  #Permanently deletes the specified key.
  api_instance.purge_deleted_key(key_name, api_version)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedKeysApi->purge_deleted_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_name** | **String**| The name of the key | 
 **api_version** | **String**| Client API version. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **recover_deleted_key**
> KeyBundle recover_deleted_key(key_name, api_version)

Recovers the deleted key to its latest version.

The Recover Deleted Key operation is applicable for deleted keys in soft-delete enabled vaults. It recovers the deleted key back to its latest version under /keys. An attempt to recover an non-deleted key will return an error. Consider this the inverse of the delete operation on soft-delete enabled vaults. This operation requires the keys/recover permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedKeysApi.new

key_name = 'key_name_example' # String | The name of the deleted key.

api_version = 'api_version_example' # String | Client API version.


begin
  #Recovers the deleted key to its latest version.
  result = api_instance.recover_deleted_key(key_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedKeysApi->recover_deleted_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_name** | **String**| The name of the deleted key. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**KeyBundle**](KeyBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



