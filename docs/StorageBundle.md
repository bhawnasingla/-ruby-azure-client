# SwaggerClient::StorageBundle

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The storage account id. | [optional] 
**resource_id** | **String** | The storage account resource id. | [optional] 
**active_key_name** | **String** | The current active storage account key name. | [optional] 
**auto_regenerate_key** | **BOOLEAN** | whether keyvault should manage the storage account for the user. | [optional] 
**regeneration_period** | **String** | The key regeneration time duration specified in ISO-8601 format. | [optional] 
**attributes** | [**StorageAccountAttributes**](StorageAccountAttributes.md) | The storage account attributes. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs | [optional] 


