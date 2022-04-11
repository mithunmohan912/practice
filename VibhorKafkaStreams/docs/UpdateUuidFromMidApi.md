# UpdateUuidFromMidApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**updateUUID**](UpdateUuidFromMidApi.md#updateUUID) | **PUT** /updateUUID | update UUID from MID


<a name="updateUUID"></a>
# **updateUUID**
> BnaApiResponse updateUUID(userId, userType, dataRoleId, roleId, updateUUID)

update UUID from MID

update UUID from MID

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.UpdateUuidFromMidApi;


UpdateUuidFromMidApi apiInstance = new UpdateUuidFromMidApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
UpdateUUID updateUUID = new UpdateUUID(); // UpdateUUID | Contains information in request parameters
try {
    BnaApiResponse result = apiInstance.updateUUID(userId, userType, dataRoleId, roleId, updateUUID);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UpdateUuidFromMidApi#updateUUID");
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
 **updateUUID** | [**UpdateUUID**](UpdateUUID.md)| Contains information in request parameters |

### Return type

[**BnaApiResponse**](BnaApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

