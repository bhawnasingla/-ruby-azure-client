# SwaggerClient::DeletedSasDefinitionItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The storage SAS identifier. | [optional] 
**sid** | **String** | The storage account SAS definition secret id. | [optional] 
**attributes** | [**SasDefinitionAttributes**](SasDefinitionAttributes.md) | The SAS definition management attributes. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 
**recovery_id** | **String** | The url of the recovery object, used to identify and recover the deleted SAS definition. | [optional] 
**scheduled_purge_date** | **Integer** | The time when the SAS definition is scheduled to be purged, in UTC | [optional] 
**deleted_date** | **Integer** | The time when the SAS definition was deleted, in UTC | [optional] 


