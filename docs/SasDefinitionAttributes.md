# SwaggerClient::SasDefinitionAttributes

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **BOOLEAN** | the enabled state of the object. | [optional] 
**created** | **Integer** | Creation time in UTC. | [optional] 
**updated** | **Integer** | Last updated time in UTC. | [optional] 
**recovery_level** | **String** | Reflects the deletion recovery level currently in effect for SAS definitions in the current vault. If it contains &#39;Purgeable&#39; the SAS definition can be permanently deleted by a privileged user; otherwise, only the system can purge the SAS definition, at the end of the retention interval. | [optional] 


