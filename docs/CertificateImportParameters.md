# SwaggerClient::CertificateImportParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | A PEM file or a base64-encoded PFX file.  PEM files need to contain the private key. | 
**pwd** | **String** | If the private key in base64EncodedCertificate is encrypted, the password used for encryption. | [optional] 
**policy** | [**CertificatePolicy**](CertificatePolicy.md) | The management policy for the certificate. | [optional] 
**attributes** | [**CertificateAttributes**](CertificateAttributes.md) | The attributes of the certificate (optional). | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 


