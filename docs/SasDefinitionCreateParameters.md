# SwaggerClient::SasDefinitionCreateParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_uri** | **String** | The SAS definition token template signed with an arbitrary key.  Tokens created according to the SAS definition will have the same properties as the template. | 
**sas_type** | **String** | The type of SAS token the SAS definition will create. | 
**validity_period** | **String** | The validity period of SAS tokens created according to the SAS definition. | 
**attributes** | [**SasDefinitionAttributes**](SasDefinitionAttributes.md) | The attributes of the SAS definition. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 


