# ProcessStatusApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProcessStatus**](ProcessStatusApi.md#getProcessStatus) | **GET** /processStatus | This method would get the status of any process


<a name="getProcessStatus"></a>
# **getProcessStatus**
> ProcessStatusResponse getProcessStatus(userId, userType, dataRoleId, roleId, processLogId)

This method would get the status of any process

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProcessStatusApi;


ProcessStatusApi apiInstance = new ProcessStatusApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = 8; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String processLogId = "processLogId_example"; // String | processLogId
try {
    ProcessStatusResponse result = apiInstance.getProcessStatus(userId, userType, dataRoleId, roleId, processLogId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProcessStatusApi#getProcessStatus");
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
 **processLogId** | **String**| processLogId |

### Return type

[**ProcessStatusResponse**](ProcessStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

