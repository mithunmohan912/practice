# SyncOnEmbossApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**syncOnEmboss**](SyncOnEmbossApi.md#syncOnEmboss) | **PUT** /syncOnEmboss | Sync data on Emboss server


<a name="syncOnEmboss"></a>
# **syncOnEmboss**
> BnaApiResponse syncOnEmboss(userId, userType, dataRoleId, roleId, entityType, referencednumber)

Sync data on Emboss server

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.SyncOnEmbossApi;


SyncOnEmbossApi apiInstance = new SyncOnEmbossApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String entityType = "entityType_example"; // String | Entity to sync .
String referencednumber = "referencednumber_example"; // String | referenced Number to sync
try {
    BnaApiResponse result = apiInstance.syncOnEmboss(userId, userType, dataRoleId, roleId, entityType, referencednumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SyncOnEmbossApi#syncOnEmboss");
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
 **entityType** | **String**| Entity to sync . | [optional]
 **referencednumber** | **String**| referenced Number to sync | [optional]

### Return type

[**BnaApiResponse**](BnaApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

