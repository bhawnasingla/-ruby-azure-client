# SwaggerClient::DeletedKeyItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kid** | **String** | Key identifier. | [optional] 
**attributes** | [**KeyAttributes**](KeyAttributes.md) | The key management attributes. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 
**managed** | **BOOLEAN** | True if the key&#39;s lifetime is managed by key vault. If this is a key backing a certificate, then managed will be true. | [optional] 
**recovery_id** | **String** | The url of the recovery object, used to identify and recover the deleted key. | [optional] 
**scheduled_purge_date** | **Integer** | The time when the key is scheduled to be purged, in UTC | [optional] 
**deleted_date** | **Integer** | The time when the key was deleted, in UTC | [optional] 


