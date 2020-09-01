# SwaggerClient::KeyCreateParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kty** | **String** | The type of key to create. For valid values, see JsonWebKeyType. | 
**key_size** | **Integer** | The key size in bits. For example: 2048, 3072, or 4096 for RSA. | [optional] 
**key_ops** | **Array&lt;String&gt;** |  | [optional] 
**attributes** | [**KeyAttributes**](KeyAttributes.md) |  | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Application specific metadata in the form of key-value pairs. | [optional] 
**crv** | **String** | Elliptic curve name. For valid values, see JsonWebKeyCurveName. | [optional] 


