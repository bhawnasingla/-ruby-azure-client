# SwaggerClient::CertificateBundle

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The certificate id. | [optional] 
**kid** | **String** | The key id. | [optional] 
**sid** | **String** | The secret id. | [optional] 
**x5t** | **String** | Thumbprint of the certificate. | [optional] 
**policy** | [**CertificatePolicy**](CertificatePolicy.md) | The management policy. | [optional] 
**cer** | **String** | CER contents of x509 certificate. | [optional] 
**content_type** | **String** | The content type of the secret. | [optional] 
**attributes** | [**CertificateAttributes**](CertificateAttributes.md) | The certificate attributes. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs | [optional] 


