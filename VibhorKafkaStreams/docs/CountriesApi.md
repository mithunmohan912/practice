# CountriesApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCountries**](CountriesApi.md#getCountries) | **GET** /countries | Find Countries


<a name="getCountries"></a>
# **getCountries**
> Countries getCountries(userId, userType, dataRoleId, roleId)

Find Countries

Returns Countries

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CountriesApi;


CountriesApi apiInstance = new CountriesApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
try {
    Countries result = apiInstance.getCountries(userId, userType, dataRoleId, roleId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CountriesApi#getCountries");
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

[**Countries**](Countries.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

