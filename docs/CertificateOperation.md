# SwaggerClient::CertificateOperation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The certificate id. | [optional] 
**issuer** | [**IssuerParameters**](IssuerParameters.md) | Parameters for the issuer of the X509 component of a certificate. | [optional] 
**csr** | **String** | The certificate signing request (CSR) that is being used in the certificate operation. | [optional] 
**cancellation_requested** | **BOOLEAN** | Indicates if cancellation was requested on the certificate operation. | [optional] 
**status** | **String** | Status of the certificate operation. | [optional] 
**status_details** | **String** | The status details of the certificate operation. | [optional] 
**error** | [**Error**](Error.md) | Error encountered, if any, during the certificate operation. | [optional] 
**target** | **String** | Location which contains the result of the certificate operation. | [optional] 
**request_id** | **String** | Identifier for the certificate operation. | [optional] 


