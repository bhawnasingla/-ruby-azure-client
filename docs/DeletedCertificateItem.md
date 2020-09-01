# SwaggerClient::DeletedCertificateItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Certificate identifier. | [optional] 
**attributes** | [**CertificateAttributes**](CertificateAttributes.md) | The certificate management attributes. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 
**x5t** | **String** | Thumbprint of the certificate. | [optional] 
**recovery_id** | **String** | The url of the recovery object, used to identify and recover the deleted certificate. | [optional] 
**scheduled_purge_date** | **Integer** | The time when the certificate is scheduled to be purged, in UTC | [optional] 
**deleted_date** | **Integer** | The time when the certificate was deleted, in UTC | [optional] 


