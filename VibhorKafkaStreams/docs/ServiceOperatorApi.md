# ServiceOperatorApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getServiceOperator**](ServiceOperatorApi.md#getServiceOperator) | **GET** /serviceOperator | Fetching Service Operator List


<a name="getServiceOperator"></a>
# **getServiceOperator**
> ServiceOperatorResponse getServiceOperator(userId, userType, dataRoleId, roleId, cardIssuerCode, serviceId)

Fetching Service Operator List

Returns Service operator List

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ServiceOperatorApi;


ServiceOperatorApi apiInstance = new ServiceOperatorApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String cardIssuerCode = "cardIssuerCode_example"; // String | Card Issuer Code
String serviceId = "serviceId_example"; // String | Service ID
try {
    ServiceOperatorResponse result = apiInstance.getServiceOperator(userId, userType, dataRoleId, roleId, cardIssuerCode, serviceId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ServiceOperatorApi#getServiceOperator");
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
 **cardIssuerCode** | **String**| Card Issuer Code |
 **serviceId** | **String**| Service ID |

### Return type

[**ServiceOperatorResponse**](ServiceOperatorResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

