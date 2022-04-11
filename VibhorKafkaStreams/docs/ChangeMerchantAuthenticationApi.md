# ChangeMerchantAuthenticationApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeMerchantAuthentication**](ChangeMerchantAuthenticationApi.md#changeMerchantAuthentication) | **PUT** /changeMerchantAuthentication | change password for merchant


<a name="changeMerchantAuthentication"></a>
# **changeMerchantAuthentication**
> BnaApiResponse changeMerchantAuthentication(userId, userType, dataRoleId, roleId, changeMerchantAuthentication)

change password for merchant

change merchant Authentication

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ChangeMerchantAuthenticationApi;


ChangeMerchantAuthenticationApi apiInstance = new ChangeMerchantAuthenticationApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
ChangeMerchantAuthentication changeMerchantAuthentication = new ChangeMerchantAuthentication(); // ChangeMerchantAuthentication | Contain Change Authentication Merchant details in request parameters
try {
    BnaApiResponse result = apiInstance.changeMerchantAuthentication(userId, userType, dataRoleId, roleId, changeMerchantAuthentication);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ChangeMerchantAuthenticationApi#changeMerchantAuthentication");
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
 **changeMerchantAuthentication** | [**ChangeMerchantAuthentication**](ChangeMerchantAuthentication.md)| Contain Change Authentication Merchant details in request parameters |

### Return type

[**BnaApiResponse**](BnaApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

