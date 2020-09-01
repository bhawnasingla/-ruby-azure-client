# SwaggerClient::CertificatesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**backup_certificate**](CertificatesApi.md#backup_certificate) | **POST** /certificates/{certificate-name}/backup | Backs up the specified certificate.
[**create_certificate**](CertificatesApi.md#create_certificate) | **POST** /certificates/{certificate-name}/create | Creates a new certificate.
[**delete_certificate**](CertificatesApi.md#delete_certificate) | **DELETE** /certificates/{certificate-name} | Deletes a certificate from a specified key vault.
[**delete_certificate_contacts**](CertificatesApi.md#delete_certificate_contacts) | **DELETE** /certificates/contacts | Deletes the certificate contacts for a specified key vault.
[**delete_certificate_issuer**](CertificatesApi.md#delete_certificate_issuer) | **DELETE** /certificates/issuers/{issuer-name} | Deletes the specified certificate issuer.
[**delete_certificate_operation**](CertificatesApi.md#delete_certificate_operation) | **DELETE** /certificates/{certificate-name}/pending | Deletes the creation operation for a specific certificate.
[**get_certificate**](CertificatesApi.md#get_certificate) | **GET** /certificates/{certificate-name}/{certificate-version} | Gets information about a certificate.
[**get_certificate_contacts**](CertificatesApi.md#get_certificate_contacts) | **GET** /certificates/contacts | Lists the certificate contacts for a specified key vault.
[**get_certificate_issuer**](CertificatesApi.md#get_certificate_issuer) | **GET** /certificates/issuers/{issuer-name} | Lists the specified certificate issuer.
[**get_certificate_issuers**](CertificatesApi.md#get_certificate_issuers) | **GET** /certificates/issuers | List certificate issuers for a specified key vault.
[**get_certificate_operation**](CertificatesApi.md#get_certificate_operation) | **GET** /certificates/{certificate-name}/pending | Gets the creation operation of a certificate.
[**get_certificate_policy**](CertificatesApi.md#get_certificate_policy) | **GET** /certificates/{certificate-name}/policy | Lists the policy for a certificate.
[**get_certificate_versions**](CertificatesApi.md#get_certificate_versions) | **GET** /certificates/{certificate-name}/versions | List the versions of a certificate.
[**get_certificates**](CertificatesApi.md#get_certificates) | **GET** /certificates | List certificates in a specified key vault
[**import_certificate**](CertificatesApi.md#import_certificate) | **POST** /certificates/{certificate-name}/import | Imports a certificate into a specified key vault.
[**merge_certificate**](CertificatesApi.md#merge_certificate) | **POST** /certificates/{certificate-name}/pending/merge | Merges a certificate or a certificate chain with a key pair existing on the server.
[**restore_certificate**](CertificatesApi.md#restore_certificate) | **POST** /certificates/restore | Restores a backed up certificate to a vault.
[**set_certificate_contacts**](CertificatesApi.md#set_certificate_contacts) | **PUT** /certificates/contacts | Sets the certificate contacts for the specified key vault.
[**set_certificate_issuer**](CertificatesApi.md#set_certificate_issuer) | **PUT** /certificates/issuers/{issuer-name} | Sets the specified certificate issuer.
[**update_certificate**](CertificatesApi.md#update_certificate) | **PATCH** /certificates/{certificate-name}/{certificate-version} | Updates the specified attributes associated with the given certificate.
[**update_certificate_issuer**](CertificatesApi.md#update_certificate_issuer) | **PATCH** /certificates/issuers/{issuer-name} | Updates the specified certificate issuer.
[**update_certificate_operation**](CertificatesApi.md#update_certificate_operation) | **PATCH** /certificates/{certificate-name}/pending | Updates a certificate operation.
[**update_certificate_policy**](CertificatesApi.md#update_certificate_policy) | **PATCH** /certificates/{certificate-name}/policy | Updates the policy for a certificate.


# **backup_certificate**
> BackupCertificateResult backup_certificate(certificate_name, api_version)

Backs up the specified certificate.

Requests that a backup of the specified certificate be downloaded to the client. All versions of the certificate will be downloaded. This operation requires the certificates/backup permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Backs up the specified certificate.
  result = api_instance.backup_certificate(certificate_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->backup_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**BackupCertificateResult**](BackupCertificateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_certificate**
> CertificateOperation create_certificate(certificate_name, parameters, api_version)

Creates a new certificate.

If this is the first version, the certificate resource is created. This operation requires the certificates/create permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate.

parameters = SwaggerClient::CertificateCreateParameters.new # CertificateCreateParameters | The parameters to create a certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Creates a new certificate.
  result = api_instance.create_certificate(certificate_name, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->create_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate. | 
 **parameters** | [**CertificateCreateParameters**](CertificateCreateParameters.md)| The parameters to create a certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateOperation**](CertificateOperation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_certificate**
> DeletedCertificateBundle delete_certificate(certificate_name, api_version)

Deletes a certificate from a specified key vault.

Deletes all versions of a certificate object along with its associated policy. Delete certificate cannot be used to remove individual versions of a certificate object. This operation requires the certificates/delete permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Deletes a certificate from a specified key vault.
  result = api_instance.delete_certificate(certificate_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->delete_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**DeletedCertificateBundle**](DeletedCertificateBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_certificate_contacts**
> Contacts delete_certificate_contacts(api_version)

Deletes the certificate contacts for a specified key vault.

Deletes the certificate contacts for a specified key vault certificate. This operation requires the certificates/managecontacts permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

api_version = 'api_version_example' # String | Client API version.


begin
  #Deletes the certificate contacts for a specified key vault.
  result = api_instance.delete_certificate_contacts(api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->delete_certificate_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 

### Return type

[**Contacts**](Contacts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_certificate_issuer**
> IssuerBundle delete_certificate_issuer(issuer_name, api_version)

Deletes the specified certificate issuer.

The DeleteCertificateIssuer operation permanently removes the specified certificate issuer from the vault. This operation requires the certificates/manageissuers/deleteissuers permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

issuer_name = 'issuer_name_example' # String | The name of the issuer.

api_version = 'api_version_example' # String | Client API version.


begin
  #Deletes the specified certificate issuer.
  result = api_instance.delete_certificate_issuer(issuer_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->delete_certificate_issuer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issuer_name** | **String**| The name of the issuer. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**IssuerBundle**](IssuerBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_certificate_operation**
> CertificateOperation delete_certificate_operation(certificate_name, api_version)

Deletes the creation operation for a specific certificate.

Deletes the creation operation for a specified certificate that is in the process of being created. The certificate is no longer created. This operation requires the certificates/update permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Deletes the creation operation for a specific certificate.
  result = api_instance.delete_certificate_operation(certificate_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->delete_certificate_operation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateOperation**](CertificateOperation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_certificate**
> CertificateBundle get_certificate(certificate_name, certificate_version, api_version)

Gets information about a certificate.

Gets information about a specific certificate. This operation requires the certificates/get permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate in the given vault.

certificate_version = 'certificate_version_example' # String | The version of the certificate. This URI fragment is optional. If not specified, the latest version of the certificate is returned.

api_version = 'api_version_example' # String | Client API version.


begin
  #Gets information about a certificate.
  result = api_instance.get_certificate(certificate_name, certificate_version, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->get_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate in the given vault. | 
 **certificate_version** | **String**| The version of the certificate. This URI fragment is optional. If not specified, the latest version of the certificate is returned. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateBundle**](CertificateBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_certificate_contacts**
> Contacts get_certificate_contacts(api_version)

Lists the certificate contacts for a specified key vault.

The GetCertificateContacts operation returns the set of certificate contact resources in the specified key vault. This operation requires the certificates/managecontacts permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

api_version = 'api_version_example' # String | Client API version.


begin
  #Lists the certificate contacts for a specified key vault.
  result = api_instance.get_certificate_contacts(api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->get_certificate_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 

### Return type

[**Contacts**](Contacts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_certificate_issuer**
> IssuerBundle get_certificate_issuer(issuer_name, api_version)

Lists the specified certificate issuer.

The GetCertificateIssuer operation returns the specified certificate issuer resources in the specified key vault. This operation requires the certificates/manageissuers/getissuers permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

issuer_name = 'issuer_name_example' # String | The name of the issuer.

api_version = 'api_version_example' # String | Client API version.


begin
  #Lists the specified certificate issuer.
  result = api_instance.get_certificate_issuer(issuer_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->get_certificate_issuer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issuer_name** | **String**| The name of the issuer. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**IssuerBundle**](IssuerBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_certificate_issuers**
> CertificateIssuerListResult get_certificate_issuers(api_version, opts)

List certificate issuers for a specified key vault.

The GetCertificateIssuers operation returns the set of certificate issuer resources in the specified key vault. This operation requires the certificates/manageissuers/getissuers permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
}

begin
  #List certificate issuers for a specified key vault.
  result = api_instance.get_certificate_issuers(api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->get_certificate_issuers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 

### Return type

[**CertificateIssuerListResult**](CertificateIssuerListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_certificate_operation**
> CertificateOperation get_certificate_operation(certificate_name, api_version)

Gets the creation operation of a certificate.

Gets the creation operation associated with a specified certificate. This operation requires the certificates/get permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Gets the creation operation of a certificate.
  result = api_instance.get_certificate_operation(certificate_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->get_certificate_operation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateOperation**](CertificateOperation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_certificate_policy**
> CertificatePolicy get_certificate_policy(certificate_name, api_version)

Lists the policy for a certificate.

The GetCertificatePolicy operation returns the specified certificate policy resources in the specified key vault. This operation requires the certificates/get permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate in a given key vault.

api_version = 'api_version_example' # String | Client API version.


begin
  #Lists the policy for a certificate.
  result = api_instance.get_certificate_policy(certificate_name, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->get_certificate_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate in a given key vault. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificatePolicy**](CertificatePolicy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_certificate_versions**
> CertificateListResult get_certificate_versions(certificate_name, api_version, opts)

List the versions of a certificate.

The GetCertificateVersions operation returns the versions of a certificate in the specified key vault. This operation requires the certificates/list permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate.

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56 # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
}

begin
  #List the versions of a certificate.
  result = api_instance.get_certificate_versions(certificate_name, api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->get_certificate_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate. | 
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 

### Return type

[**CertificateListResult**](CertificateListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_certificates**
> CertificateListResult get_certificates(api_version, opts)

List certificates in a specified key vault

The GetCertificates operation returns the set of certificates resources in the specified key vault. This operation requires the certificates/list permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

api_version = 'api_version_example' # String | Client API version.

opts = { 
  maxresults: 56, # Integer | Maximum number of results to return in a page. If not specified the service will return up to 25 results.
  include_pending: true # BOOLEAN | Specifies whether to include certificates which are not completely provisioned.
}

begin
  #List certificates in a specified key vault
  result = api_instance.get_certificates(api_version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->get_certificates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_version** | **String**| Client API version. | 
 **maxresults** | **Integer**| Maximum number of results to return in a page. If not specified the service will return up to 25 results. | [optional] 
 **include_pending** | **BOOLEAN**| Specifies whether to include certificates which are not completely provisioned. | [optional] 

### Return type

[**CertificateListResult**](CertificateListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **import_certificate**
> CertificateBundle import_certificate(certificate_name, parameters, api_version)

Imports a certificate into a specified key vault.

Imports an existing valid certificate, containing a private key, into Azure Key Vault. The certificate to be imported can be in either PFX or PEM format. If the certificate is in PEM format the PEM file must contain the key as well as x509 certificates. This operation requires the certificates/import permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate.

parameters = SwaggerClient::CertificateImportParameters.new # CertificateImportParameters | The parameters to import the certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Imports a certificate into a specified key vault.
  result = api_instance.import_certificate(certificate_name, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->import_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate. | 
 **parameters** | [**CertificateImportParameters**](CertificateImportParameters.md)| The parameters to import the certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateBundle**](CertificateBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **merge_certificate**
> CertificateBundle merge_certificate(certificate_name, parameters, api_version)

Merges a certificate or a certificate chain with a key pair existing on the server.

The MergeCertificate operation performs the merging of a certificate or certificate chain with a key pair currently available in the service. This operation requires the certificates/create permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate.

parameters = SwaggerClient::CertificateMergeParameters.new # CertificateMergeParameters | The parameters to merge certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Merges a certificate or a certificate chain with a key pair existing on the server.
  result = api_instance.merge_certificate(certificate_name, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->merge_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate. | 
 **parameters** | [**CertificateMergeParameters**](CertificateMergeParameters.md)| The parameters to merge certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateBundle**](CertificateBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **restore_certificate**
> CertificateBundle restore_certificate(parameters, api_version)

Restores a backed up certificate to a vault.

Restores a backed up certificate, and all its versions, to a vault. This operation requires the certificates/restore permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

parameters = SwaggerClient::CertificateRestoreParameters.new # CertificateRestoreParameters | The parameters to restore the certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Restores a backed up certificate to a vault.
  result = api_instance.restore_certificate(parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->restore_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**CertificateRestoreParameters**](CertificateRestoreParameters.md)| The parameters to restore the certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateBundle**](CertificateBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_certificate_contacts**
> Contacts set_certificate_contacts(contacts, api_version)

Sets the certificate contacts for the specified key vault.

Sets the certificate contacts for the specified key vault. This operation requires the certificates/managecontacts permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

contacts = SwaggerClient::Contacts.new # Contacts | The contacts for the key vault certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Sets the certificate contacts for the specified key vault.
  result = api_instance.set_certificate_contacts(contacts, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->set_certificate_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contacts** | [**Contacts**](Contacts.md)| The contacts for the key vault certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**Contacts**](Contacts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_certificate_issuer**
> IssuerBundle set_certificate_issuer(issuer_name, parameter, api_version)

Sets the specified certificate issuer.

The SetCertificateIssuer operation adds or updates the specified certificate issuer. This operation requires the certificates/setissuers permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

issuer_name = 'issuer_name_example' # String | The name of the issuer.

parameter = SwaggerClient::CertificateIssuerSetParameters.new # CertificateIssuerSetParameters | Certificate issuer set parameter.

api_version = 'api_version_example' # String | Client API version.


begin
  #Sets the specified certificate issuer.
  result = api_instance.set_certificate_issuer(issuer_name, parameter, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->set_certificate_issuer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issuer_name** | **String**| The name of the issuer. | 
 **parameter** | [**CertificateIssuerSetParameters**](CertificateIssuerSetParameters.md)| Certificate issuer set parameter. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**IssuerBundle**](IssuerBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_certificate**
> CertificateBundle update_certificate(certificate_name, certificate_version, parameters, api_version)

Updates the specified attributes associated with the given certificate.

The UpdateCertificate operation applies the specified update on the given certificate; the only elements updated are the certificate's attributes. This operation requires the certificates/update permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate in the given key vault.

certificate_version = 'certificate_version_example' # String | The version of the certificate.

parameters = SwaggerClient::CertificateUpdateParameters.new # CertificateUpdateParameters | The parameters for certificate update.

api_version = 'api_version_example' # String | Client API version.


begin
  #Updates the specified attributes associated with the given certificate.
  result = api_instance.update_certificate(certificate_name, certificate_version, parameters, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->update_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate in the given key vault. | 
 **certificate_version** | **String**| The version of the certificate. | 
 **parameters** | [**CertificateUpdateParameters**](CertificateUpdateParameters.md)| The parameters for certificate update. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateBundle**](CertificateBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_certificate_issuer**
> IssuerBundle update_certificate_issuer(issuer_name, parameter, api_version)

Updates the specified certificate issuer.

The UpdateCertificateIssuer operation performs an update on the specified certificate issuer entity. This operation requires the certificates/setissuers permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

issuer_name = 'issuer_name_example' # String | The name of the issuer.

parameter = SwaggerClient::CertificateIssuerUpdateParameters.new # CertificateIssuerUpdateParameters | Certificate issuer update parameter.

api_version = 'api_version_example' # String | Client API version.


begin
  #Updates the specified certificate issuer.
  result = api_instance.update_certificate_issuer(issuer_name, parameter, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->update_certificate_issuer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issuer_name** | **String**| The name of the issuer. | 
 **parameter** | [**CertificateIssuerUpdateParameters**](CertificateIssuerUpdateParameters.md)| Certificate issuer update parameter. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**IssuerBundle**](IssuerBundle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_certificate_operation**
> CertificateOperation update_certificate_operation(certificate_name, certificate_operation, api_version)

Updates a certificate operation.

Updates a certificate creation operation that is already in progress. This operation requires the certificates/update permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate.

certificate_operation = SwaggerClient::CertificateOperationUpdateParameter.new # CertificateOperationUpdateParameter | The certificate operation response.

api_version = 'api_version_example' # String | Client API version.


begin
  #Updates a certificate operation.
  result = api_instance.update_certificate_operation(certificate_name, certificate_operation, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->update_certificate_operation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate. | 
 **certificate_operation** | [**CertificateOperationUpdateParameter**](CertificateOperationUpdateParameter.md)| The certificate operation response. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificateOperation**](CertificateOperation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_certificate_policy**
> CertificatePolicy update_certificate_policy(certificate_name, certificate_policy, api_version)

Updates the policy for a certificate.

Set specified members in the certificate policy. Leave others as null. This operation requires the certificates/update permission.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CertificatesApi.new

certificate_name = 'certificate_name_example' # String | The name of the certificate in the given vault.

certificate_policy = SwaggerClient::CertificatePolicy.new # CertificatePolicy | The policy for the certificate.

api_version = 'api_version_example' # String | Client API version.


begin
  #Updates the policy for a certificate.
  result = api_instance.update_certificate_policy(certificate_name, certificate_policy, api_version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CertificatesApi->update_certificate_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_name** | **String**| The name of the certificate in the given vault. | 
 **certificate_policy** | [**CertificatePolicy**](CertificatePolicy.md)| The policy for the certificate. | 
 **api_version** | **String**| Client API version. | 

### Return type

[**CertificatePolicy**](CertificatePolicy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



