# ProcessManagementApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**processManagement**](ProcessManagementApi.md#processManagement) | **PUT** /processManagement | Process pending status.


<a name="processManagement"></a>
# **processManagement**
> BnaApiResponse processManagement(userId, userType, dataRoleId, roleId, processManagementStatus)

Process pending status.

Returns process management status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProcessManagementApi;


ProcessManagementApi apiInstance = new ProcessManagementApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
ProcessManagementStatus processManagementStatus = new ProcessManagementStatus(); // ProcessManagementStatus | Contain process management information in request parameters
try {
    BnaApiResponse result = apiInstance.processManagement(userId, userType, dataRoleId, roleId, processManagementStatus);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProcessManagementApi#processManagement");
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
 **processManagementStatus** | [**ProcessManagementStatus**](ProcessManagementStatus.md)| Contain process management information in request parameters |

### Return type

[**BnaApiResponse**](BnaApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

