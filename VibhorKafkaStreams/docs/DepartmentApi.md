# DepartmentApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDepartment**](DepartmentApi.md#getDepartment) | **GET** /department | Find Department Number


<a name="getDepartment"></a>
# **getDepartment**
> DepartmentResponse getDepartment(userId, userType, dataRoleId, roleId)

Find Department Number

Returns Department Number

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.DepartmentApi;


DepartmentApi apiInstance = new DepartmentApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
try {
    DepartmentResponse result = apiInstance.getDepartment(userId, userType, dataRoleId, roleId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DepartmentApi#getDepartment");
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

### Return type

[**DepartmentResponse**](DepartmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

