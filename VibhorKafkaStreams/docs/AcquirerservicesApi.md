# AcquirerservicesApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acquirerservices**](AcquirerservicesApi.md#acquirerservices) | **GET** /acquirerservices | Fetching Acquirers


<a name="acquirerservices"></a>
# **acquirerservices**
> List&lt;Service&gt; acquirerservices(userId, userType, dataRoleId, roleId)

Fetching Acquirers

Returns Acquirers

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AcquirerservicesApi;


AcquirerservicesApi apiInstance = new AcquirerservicesApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
try {
    List<Service> result = apiInstance.acquirerservices(userId, userType, dataRoleId, roleId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AcquirerservicesApi#acquirerservices");
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

[**List&lt;Service&gt;**](Service.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

