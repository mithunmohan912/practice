# ServiceprovidereposApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addServiceProviderEpos**](ServiceprovidereposApi.md#addServiceProviderEpos) | **POST** /serviceproviderepos | Add service provider epos in system


<a name="addServiceProviderEpos"></a>
# **addServiceProviderEpos**
> ServiceProviderEpos addServiceProviderEpos(userId, userType, dataRoleId, roleId, userId2, serviceProviderEpos)

Add service provider epos in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ServiceprovidereposApi;


ServiceprovidereposApi apiInstance = new ServiceprovidereposApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String userId2 = "userId_example"; // String | User Id
ServiceProviderEpos serviceProviderEpos = new ServiceProviderEpos(); // ServiceProviderEpos | Contain Service Provider EPOS information in request parameters
try {
    ServiceProviderEpos result = apiInstance.addServiceProviderEpos(userId, userType, dataRoleId, roleId, userId2, serviceProviderEpos);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ServiceprovidereposApi#addServiceProviderEpos");
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
 **userId2** | **String**| User Id |
 **serviceProviderEpos** | [**ServiceProviderEpos**](ServiceProviderEpos.md)| Contain Service Provider EPOS information in request parameters |

### Return type

[**ServiceProviderEpos**](ServiceProviderEpos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

