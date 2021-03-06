# SwaggerClient::SecretAttributes

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **BOOLEAN** | Determines whether the object is enabled. | [optional] 
**nbf** | **Integer** | Not before date in UTC. | [optional] 
**exp** | **Integer** | Expiry date in UTC. | [optional] 
**created** | **Integer** | Creation time in UTC. | [optional] 
**updated** | **Integer** | Last updated time in UTC. | [optional] 
**recovery_level** | **String** | Reflects the deletion recovery level currently in effect for secrets in the current vault. If it contains &#39;Purgeable&#39;, the secret can be permanently deleted by a privileged user; otherwise, only the system can purge the secret, at the end of the retention interval. | [optional] 


