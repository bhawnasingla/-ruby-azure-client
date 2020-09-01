# SwaggerClient::DeletedStorageAccountItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Storage identifier. | [optional] 
**resource_id** | **String** | Storage account resource Id. | [optional] 
**attributes** | [**StorageAccountAttributes**](StorageAccountAttributes.md) | The storage account management attributes. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 
**recovery_id** | **String** | The url of the recovery object, used to identify and recover the deleted storage account. | [optional] 
**scheduled_purge_date** | **Integer** | The time when the storage account is scheduled to be purged, in UTC | [optional] 
**deleted_date** | **Integer** | The time when the storage account was deleted, in UTC | [optional] 


