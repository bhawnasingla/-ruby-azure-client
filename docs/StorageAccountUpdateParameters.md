# SwaggerClient::StorageAccountUpdateParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_key_name** | **String** | The current active storage account key name. | [optional] 
**auto_regenerate_key** | **BOOLEAN** | whether keyvault should manage the storage account for the user. | [optional] 
**regeneration_period** | **String** | The key regeneration time duration specified in ISO-8601 format. | [optional] 
**attributes** | [**StorageAccountAttributes**](StorageAccountAttributes.md) | The attributes of the storage account. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 


