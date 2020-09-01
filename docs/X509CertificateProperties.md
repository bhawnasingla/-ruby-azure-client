# SwaggerClient::X509CertificateProperties

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** | The subject name. Should be a valid X509 distinguished Name. | [optional] 
**ekus** | **Array&lt;String&gt;** | The enhanced key usage. | [optional] 
**sans** | [**SubjectAlternativeNames**](SubjectAlternativeNames.md) | The subject alternative names. | [optional] 
**key_usage** | **Array&lt;String&gt;** | List of key usages. | [optional] 
**validity_months** | **Integer** | The duration that the certificate is valid in months. | [optional] 


