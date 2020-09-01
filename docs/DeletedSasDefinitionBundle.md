# SwaggerClient::DeletedSasDefinitionBundle

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The SAS definition id. | [optional] 
**sid** | **String** | Storage account SAS definition secret id. | [optional] 
**template_uri** | **String** | The SAS definition token template signed with an arbitrary key.  Tokens created according to the SAS definition will have the same properties as the template. | [optional] 
**sas_type** | **String** | The type of SAS token the SAS definition will create. | [optional] 
**validity_period** | **String** | The validity period of SAS tokens created according to the SAS definition. | [optional] 
**attributes** | [**SasDefinitionAttributes**](SasDefinitionAttributes.md) | The SAS definition attributes. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs | [optional] 
**recovery_id** | **String** | The url of the recovery object, used to identify and recover the deleted SAS definition. | [optional] 
**scheduled_purge_date** | **Integer** | The time when the SAS definition is scheduled to be purged, in UTC | [optional] 
**deleted_date** | **Integer** | The time when the SAS definition was deleted, in UTC | [optional] 


