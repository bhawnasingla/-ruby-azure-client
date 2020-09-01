# SwaggerClient::CertificatePolicy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The certificate id. | [optional] 
**key_props** | [**KeyProperties**](KeyProperties.md) | Properties of the key backing a certificate. | [optional] 
**secret_props** | [**SecretProperties**](SecretProperties.md) | Properties of the secret backing a certificate. | [optional] 
**x509_props** | [**X509CertificateProperties**](X509CertificateProperties.md) | Properties of the X509 component of a certificate. | [optional] 
**lifetime_actions** | [**Array&lt;LifetimeAction&gt;**](LifetimeAction.md) | Actions that will be performed by Key Vault over the lifetime of a certificate. | [optional] 
**issuer** | [**IssuerParameters**](IssuerParameters.md) | Parameters for the issuer of the X509 component of a certificate. | [optional] 
**attributes** | [**CertificateAttributes**](CertificateAttributes.md) | The certificate attributes. | [optional] 


