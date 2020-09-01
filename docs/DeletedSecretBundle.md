# SwaggerClient::DeletedSecretBundle

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | The secret value. | [optional] 
**id** | **String** | The secret id. | [optional] 
**content_type** | **String** | The content type of the secret. | [optional] 
**attributes** | [**SecretAttributes**](SecretAttributes.md) | The secret management attributes. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 
**kid** | **String** | If this is a secret backing a KV certificate, then this field specifies the corresponding key backing the KV certificate. | [optional] 
**managed** | **BOOLEAN** | True if the secret&#39;s lifetime is managed by key vault. If this is a secret backing a certificate, then managed will be true. | [optional] 
**recovery_id** | **String** | The url of the recovery object, used to identify and recover the deleted secret. | [optional] 
**scheduled_purge_date** | **Integer** | The time when the secret is scheduled to be purged, in UTC | [optional] 
**deleted_date** | **Integer** | The time when the secret was deleted, in UTC | [optional] 


