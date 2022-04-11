# TransactionBandApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTransactionBand**](TransactionBandApi.md#getTransactionBand) | **GET** /transactionBand | Get Transaction Band


<a name="getTransactionBand"></a>
# **getTransactionBand**
> TransactionBand getTransactionBand(userId, userType, dataRoleId, roleId, entityType, productPlanCode)

Get Transaction Band

transaction Band list.

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TransactionBandApi;


TransactionBandApi apiInstance = new TransactionBandApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String entityType = "entityType_example"; // String | Entity Type
String productPlanCode = "productPlanCode_example"; // String | Product Plan Code
try {
    TransactionBand result = apiInstance.getTransactionBand(userId, userType, dataRoleId, roleId, entityType, productPlanCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TransactionBandApi#getTransactionBand");
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
 **entityType** | **String**| Entity Type | [optional]
 **productPlanCode** | **String**| Product Plan Code | [optional]

### Return type

[**TransactionBand**](TransactionBand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

