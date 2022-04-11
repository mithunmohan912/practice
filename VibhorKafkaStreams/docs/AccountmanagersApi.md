# AccountmanagersApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountmanager**](AccountmanagersApi.md#getAccountmanager) | **GET** /accountmanagers | Find Account Manager


<a name="getAccountmanager"></a>
# **getAccountmanager**
> AccountManagers getAccountmanager(userId, userType, dataRoleId, roleId)

Find Account Manager

Returns Account Managers

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AccountmanagersApi;


AccountmanagersApi apiInstance = new AccountmanagersApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
try {
    AccountManagers result = apiInstance.getAccountmanager(userId, userType, dataRoleId, roleId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AccountmanagersApi#getAccountmanager");
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

[**AccountManagers**](AccountManagers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

