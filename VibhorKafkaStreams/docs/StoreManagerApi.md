# StoreManagerApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**updateStoreManagerTerminal**](StoreManagerApi.md#updateStoreManagerTerminal) | **PUT** /storeManagerPosTerminal | Register store Manager terminal


<a name="updateStoreManagerTerminal"></a>
# **updateStoreManagerTerminal**
> StoreMangerPosTerminalResponse updateStoreManagerTerminal(userId, userType, dataRoleId, roleId, storeMangerPosTerminal)

Register store Manager terminal

Update storeManager terminal

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.StoreManagerApi;


StoreManagerApi apiInstance = new StoreManagerApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
StoreMangerPosTerminal storeMangerPosTerminal = new StoreMangerPosTerminal(); // StoreMangerPosTerminal | Contains StoreMangerPosTerminal information in request parameters
try {
    StoreMangerPosTerminalResponse result = apiInstance.updateStoreManagerTerminal(userId, userType, dataRoleId, roleId, storeMangerPosTerminal);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StoreManagerApi#updateStoreManagerTerminal");
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
 **storeMangerPosTerminal** | [**StoreMangerPosTerminal**](StoreMangerPosTerminal.md)| Contains StoreMangerPosTerminal information in request parameters |

### Return type

[**StoreMangerPosTerminalResponse**](StoreMangerPosTerminalResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

