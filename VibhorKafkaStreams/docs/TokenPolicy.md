
# TokenPolicy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokenPolicyIdentifier** | **Integer** | Token Policy Identifier |  [optional]
**groupName** | **String** | Group Name | 
**groupDescription** | **String** | Group Description | 
**fileNamePrefix** | **String** | File Name Prefix |  [optional]
**offlineTokensRequired** | **String** | Offline Tokens Required |  [optional]
**tokenPresenterType** | **String** | Token Presenter Type | 
**subjectType** | **Integer** | Subject Type this should be 1 if Convergent else 0 | 
**tokenFormatIdentifier** | **Integer** | Token Format this should be 1 for Wrapped Luhn Fail,2 for Wrapped Luhn Pass,4 for Card Format Preserving and 3 for Alphanumeric | 
**tokenFormatLength** | [**TokenFormatLengthEnum**](#TokenFormatLengthEnum) | Token Format | 


<a name="TokenFormatLengthEnum"></a>
## Enum: TokenFormatLengthEnum
Name | Value
---- | -----
NUMBER_15 | 15
NUMBER_16 | 16
NUMBER_17 | 17
NUMBER_18 | 18
NUMBER_19 | 19
NUMBER_20 | 20
NUMBER_21 | 21



