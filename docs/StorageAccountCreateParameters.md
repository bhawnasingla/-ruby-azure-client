# SwaggerClient::StorageAccountCreateParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_id** | **String** | Storage account resource id. | 
**active_key_name** | **String** | Current active storage account key name. | 
**auto_regenerate_key** | **BOOLEAN** | whether keyvault should manage the storage account for the user. | 
**regeneration_period** | **String** | The key regeneration time duration specified in ISO-8601 format. | [optional] 
**attributes** | [**StorageAccountAttributes**](StorageAccountAttributes.md) | The attributes of the storage account. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 


