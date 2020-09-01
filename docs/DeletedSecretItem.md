# SwaggerClient::DeletedSecretItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Secret identifier. | [optional] 
**attributes** | [**SecretAttributes**](SecretAttributes.md) | The secret management attributes. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 
**content_type** | **String** | Type of the secret value such as a password. | [optional] 
**managed** | **BOOLEAN** | True if the secret&#39;s lifetime is managed by key vault. If this is a key backing a certificate, then managed will be true. | [optional] 
**recovery_id** | **String** | The url of the recovery object, used to identify and recover the deleted secret. | [optional] 
**scheduled_purge_date** | **Integer** | The time when the secret is scheduled to be purged, in UTC | [optional] 
**deleted_date** | **Integer** | The time when the secret was deleted, in UTC | [optional] 


