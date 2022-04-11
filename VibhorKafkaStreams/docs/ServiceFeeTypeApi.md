# ServiceFeeTypeApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getServiceFeeType**](ServiceFeeTypeApi.md#getServiceFeeType) | **GET** /serviceFeeType | Get Service fee type List


<a name="getServiceFeeType"></a>
# **getServiceFeeType**
> ServiceFeeTypeList getServiceFeeType(userId, userType, dataRoleId, roleId, code, feeName, serviceId, type, period)

Get Service fee type List

Returns Array of Service fee type

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ServiceFeeTypeApi;


ServiceFeeTypeApi apiInstance = new ServiceFeeTypeApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String code = "code_example"; // String | Service fee type Code
String feeName = "feeName_example"; // String | Fee Name
Integer serviceId = 4; // Integer | service Id
String type = "type_example"; // String | type
String period = "period_example"; // String | period
try {
    ServiceFeeTypeList result = apiInstance.getServiceFeeType(userId, userType, dataRoleId, roleId, code, feeName, serviceId, type, period);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ServiceFeeTypeApi#getServiceFeeType");
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
 **code** | **String**| Service fee type Code | [optional]
 **feeName** | **String**| Fee Name | [optional]
 **serviceId** | **Integer**| service Id | [optional]
 **type** | **String**| type | [optional]
 **period** | **String**| period | [optional]

### Return type

[**ServiceFeeTypeList**](ServiceFeeTypeList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

