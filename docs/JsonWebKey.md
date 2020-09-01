# SwaggerClient::JsonWebKey

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kid** | **String** | Key identifier. | [optional] 
**kty** | **String** | JsonWebKey Key Type (kty), as defined in https://tools.ietf.org/html/draft-ietf-jose-json-web-algorithms-40. | [optional] 
**key_ops** | **Array&lt;String&gt;** |  | [optional] 
**n** | **String** | RSA modulus. | [optional] 
**e** | **String** | RSA public exponent. | [optional] 
**d** | **String** | RSA private exponent, or the D component of an EC private key. | [optional] 
**dp** | **String** | RSA private key parameter. | [optional] 
**dq** | **String** | RSA private key parameter. | [optional] 
**qi** | **String** | RSA private key parameter. | [optional] 
**p** | **String** | RSA secret prime. | [optional] 
**q** | **String** | RSA secret prime, with p &lt; q. | [optional] 
**k** | **String** | Symmetric key. | [optional] 
**key_hsm** | **String** | HSM Token, used with &#39;Bring Your Own Key&#39;. | [optional] 
**crv** | **String** | Elliptic curve name. For valid values, see JsonWebKeyCurveName. | [optional] 
**x** | **String** | X component of an EC public key. | [optional] 
**y** | **String** | Y component of an EC public key. | [optional] 


