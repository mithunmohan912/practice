# CurrenciesApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrencies**](CurrenciesApi.md#getCurrencies) | **GET** /currencies | Find Currencies


<a name="getCurrencies"></a>
# **getCurrencies**
> CurrencyResponse getCurrencies(userId, userType, dataRoleId, roleId)

Find Currencies

Returns Currencies

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CurrenciesApi;


CurrenciesApi apiInstance = new CurrenciesApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
try {
    CurrencyResponse result = apiInstance.getCurrencies(userId, userType, dataRoleId, roleId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CurrenciesApi#getCurrencies");
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

[**CurrencyResponse**](CurrencyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

