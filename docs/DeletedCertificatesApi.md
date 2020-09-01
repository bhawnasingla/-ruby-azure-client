# SwaggerClient::DeletedCertificatesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_deleted_certificate**](DeletedCertificatesApi.md#get_deleted_certificate) | **GET** /deletedcertificates/{certificate-name} | Retrieves information about the specified deleted certificate.
[**get_deleted_certificates**](DeletedCertificatesApi.md#get_deleted_certificates) | **GET** /deletedcertificates | Lists the deleted certificates in the specified vault currently available for recovery.
[**purge_deleted_certificate**](DeletedCertificatesApi.md#purge_deleted_certificate) | **DELETE** /deletedcertificates/{certificate-name} | Permanently deletes the specified deleted certificate.
[**recover_deleted_certificate**](DeletedCertificatesApi.md#recover_deleted_certificate) | **POST** /deletedcertificates/{certificate-name}/recover | Recovers the deleted certificate back to its current version under /certificates.


# **get_deleted_certificate**
> DeletedCertificateBundle get_deleted_certificate(certificate_name, api_version)

Retrieves information about the specified deleted certificate.

The GetDeletedCertificate operation retrieves the deleted certificate information plus its attributes, such as retention interval, scheduled permanent deletion and the current deletion recovery level. This operation requires the certificates/get permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedCertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate

api_version = 'api_version_example' # String | Client API version.


begin
  #Retrieves information about the specified deleted certificate.
  result = api_instance.get_deleted_certificate(certificate_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedCertificatesApi->get_deleted_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate | 
 **api_version** | **String**| Client API version. | 

### Return type

[**DeletedCertificateBundle**](DeletedCertificateBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_deleted_certificates**
> DeletedCertificateListResult get_deleted_certificates(api_version, opts)

Lists the deleted certificates in the specified vault currently available for recovery.

The GetDeletedCertificates operation retrieves the certificates in the current vault which are in a deleted state and ready for recovery or purging. This operation includes deletion-specific information. This operation requires the certificates/get/list permission. This operation can only be enabled on soft-delete enabled vaults.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedCertificatesApi.new

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56, # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
  include_pending: true # BOOLEAN | Specifies whether to include certificates which are not completely provisioned.
}

begin
  #Lists the deleted certificates in the specified vault currently available for recovery.
  result = api_instance.get_deleted_certificates(api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedCertificatesApi->get_deleted_certificates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 
 **include_pending** | **BOOLEAN**| Specifies whether to include certificates which are not completely provisioned. | [optional] 

### Return type

[**DeletedCertificateListResult**](DeletedCertificateListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **purge_deleted_certificate**
> purge_deleted_certificate(certificate_name, api_version)

Permanently deletes the specified deleted certificate.

The PurgeDeletedCertificate operation performs an irreversible deletion of the specified certificate, without possibility for recovery. The operation is not available if the recovery level does not specify 'Purgeable'. This operation requires the certificate/purge permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedCertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate

api_version = 'api_version_example' # String | Client API version.


begin
  #Permanently deletes the specified deleted certificate.
  api_instance.purge_deleted_certificate(certificate_name, api_version)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedCertificatesApi->purge_deleted_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate | 
 **api_version** | **String**| Client API version. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **recover_deleted_certificate**
> CertificateBundle recover_deleted_certificate(certificate_name, api_version)

Recovers the deleted certificate back to its current version under /certificates.

The RecoverDeletedCertificate operation performs the reversal of the Delete operation. The operation is applicable in vaults enabled for soft-delete, and must be issued during the retention interval (available in the deleted certificate's attributes). This operation requires the certificates/recover permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeletedCertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the deleted certificate

api_version = 'api_version_example' # String | Client API version.


begin
  #Recovers the deleted certificate back to its current version under /certificates.
  result = api_instance.recover_deleted_certificate(certificate_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeletedCertificatesApi->recover_deleted_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the deleted certificate | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateBundle**](CertificateBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



