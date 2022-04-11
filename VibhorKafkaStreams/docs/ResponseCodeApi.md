# ResponseCodeApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getResponseCode**](ResponseCodeApi.md#getResponseCode) | **GET** /responseCode | get Response code List.


<a name="getResponseCode"></a>
# **getResponseCode**
> ResponseCodes getResponseCode(userId, userType, dataRoleId, roleId, responseCode, description)

get Response code List.

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ResponseCodeApi;


ResponseCodeApi apiInstance = new ResponseCodeApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String responseCode = "responseCode_example"; // String | response code
String description = "description_example"; // String | description
try {
    ResponseCodes result = apiInstance.getResponseCode(userId, userType, dataRoleId, roleId, responseCode, description);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ResponseCodeApi#getResponseCode");
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
 **responseCode** | **String**| response code | [optional]
 **description** | **String**| description | [optional]

### Return type

[**ResponseCodes**](ResponseCodes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

