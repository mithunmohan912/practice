# TerminalattributeApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTerminalAttribute**](TerminalattributeApi.md#getTerminalAttribute) | **GET** /terminalAttribute | Get Terminal Attribute


<a name="getTerminalAttribute"></a>
# **getTerminalAttribute**
> TerminalAttributeResponse getTerminalAttribute(userId, userType, dataRoleId, roleId, contactlessMagstripe11, contactlessEMV12, reservedForUK13, reservedForUK14, partialApprovalResSup21, transactionIdentifiersSup22, alternateCardNumberSup23, reservedForUK24, contactlessSignature31, contactlessCDCVM32, reservedForUK33, reservedForUK34, mPOSIntegratedCardReader41, mPOSSeparateCardReader42, reservedForUK43, reservedForUK44, reservedForUK51, reservedForUK52, reservedForUK53, reservedForUK54, reservedForUK61, reservedForUK62, reservedForUK63, reservedForUK64)

Get Terminal Attribute

Returns Terminal Attribute

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalattributeApi;


TerminalattributeApi apiInstance = new TerminalattributeApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Boolean contactlessMagstripe11 = true; // Boolean | Contactless reader magstripe format
Boolean contactlessEMV12 = true; // Boolean | Contactless reader EMV format
Boolean reservedForUK13 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK14 = true; // Boolean | Reserved for The UK Cards Association
Boolean partialApprovalResSup21 = true; // Boolean | Partial approval responses supported
Boolean transactionIdentifiersSup22 = true; // Boolean | Transaction identifiers supported
Boolean alternateCardNumberSup23 = true; // Boolean | Alternate card number supported
Boolean reservedForUK24 = true; // Boolean | Reserved for The UK Cards Association
Boolean contactlessSignature31 = true; // Boolean | Contactless signature
Boolean contactlessCDCVM32 = true; // Boolean | Contactless CDCVM
Boolean reservedForUK33 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK34 = true; // Boolean | Reserved for The UK Cards Association
Boolean mPOSIntegratedCardReader41 = true; // Boolean | mPOS with integrated card reader
Boolean mPOSSeparateCardReader42 = true; // Boolean | mPOS with separate  card reader
Boolean reservedForUK43 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK44 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK51 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK52 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK53 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK54 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK61 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK62 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK63 = true; // Boolean | Reserved for The UK Cards Association
Boolean reservedForUK64 = true; // Boolean | Reserved for The UK Cards Association
try {
    TerminalAttributeResponse result = apiInstance.getTerminalAttribute(userId, userType, dataRoleId, roleId, contactlessMagstripe11, contactlessEMV12, reservedForUK13, reservedForUK14, partialApprovalResSup21, transactionIdentifiersSup22, alternateCardNumberSup23, reservedForUK24, contactlessSignature31, contactlessCDCVM32, reservedForUK33, reservedForUK34, mPOSIntegratedCardReader41, mPOSSeparateCardReader42, reservedForUK43, reservedForUK44, reservedForUK51, reservedForUK52, reservedForUK53, reservedForUK54, reservedForUK61, reservedForUK62, reservedForUK63, reservedForUK64);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalattributeApi#getTerminalAttribute");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User Id |
 **userType** | **String**| Type of User |
 **dataRoleId** | **String**| Data role Id |
 **roleId** | **Integer**| Role Id of User |
 **contactlessMagstripe11** | **Boolean**| Contactless reader magstripe format |
 **contactlessEMV12** | **Boolean**| Contactless reader EMV format |
 **reservedForUK13** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK14** | **Boolean**| Reserved for The UK Cards Association |
 **partialApprovalResSup21** | **Boolean**| Partial approval responses supported |
 **transactionIdentifiersSup22** | **Boolean**| Transaction identifiers supported |
 **alternateCardNumberSup23** | **Boolean**| Alternate card number supported |
 **reservedForUK24** | **Boolean**| Reserved for The UK Cards Association |
 **contactlessSignature31** | **Boolean**| Contactless signature |
 **contactlessCDCVM32** | **Boolean**| Contactless CDCVM |
 **reservedForUK33** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK34** | **Boolean**| Reserved for The UK Cards Association |
 **mPOSIntegratedCardReader41** | **Boolean**| mPOS with integrated card reader |
 **mPOSSeparateCardReader42** | **Boolean**| mPOS with separate  card reader |
 **reservedForUK43** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK44** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK51** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK52** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK53** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK54** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK61** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK62** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK63** | **Boolean**| Reserved for The UK Cards Association |
 **reservedForUK64** | **Boolean**| Reserved for The UK Cards Association |

### Return type

[**TerminalAttributeResponse**](TerminalAttributeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

