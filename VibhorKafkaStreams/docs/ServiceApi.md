# ServiceApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getService**](ServiceApi.md#getService) | **GET** /service | Fetching Services (Acquirers)
[**getServiceNames**](ServiceApi.md#getServiceNames) | **GET** /serviceNames | Fetching Services Names


<a name="getService"></a>
# **getService**
> ServiceList getService(userId, userType, dataRoleId, roleId, id, serviceProviderCode, serviceName, startDate, mode, uiQueryType, mscSupported, merchantNumber)

Fetching Services (Acquirers)

Returns Services (Acquirers)

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ServiceApi;


ServiceApi apiInstance = new ServiceApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer id = 56; // Integer | Service ID
String serviceProviderCode = "serviceProviderCode_example"; // String | ServiceProviderCode
String serviceName = "serviceName_example"; // String | ServiceName
String startDate = 20190101; // String | StartDate
String mode = "mode_example"; // String | Mode
Integer uiQueryType = 56; // Integer | UiQueryType
String mscSupported = Y; // String | MSCSupported
String merchantNumber = "merchantNumber_example"; // String | Merchant Number
try {
    ServiceList result = apiInstance.getService(userId, userType, dataRoleId, roleId, id, serviceProviderCode, serviceName, startDate, mode, uiQueryType, mscSupported, merchantNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ServiceApi#getService");
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
 **id** | **Integer**| Service ID | [optional]
 **serviceProviderCode** | **String**| ServiceProviderCode | [optional]
 **serviceName** | **String**| ServiceName | [optional]
 **startDate** | **String**| StartDate | [optional]
 **mode** | **String**| Mode | [optional]
 **uiQueryType** | **Integer**| UiQueryType | [optional]
 **mscSupported** | **String**| MSCSupported | [optional]
 **merchantNumber** | **String**| Merchant Number | [optional]

### Return type

[**ServiceList**](ServiceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getServiceNames"></a>
# **getServiceNames**
> ServiceProviderList getServiceNames(userId, userType, dataRoleId, roleId, cardIssuerCode)

Fetching Services Names

Returns Service Names

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ServiceApi;


ServiceApi apiInstance = new ServiceApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String cardIssuerCode = "cardIssuerCode_example"; // String | Card Issuer Code
try {
    ServiceProviderList result = apiInstance.getServiceNames(userId, userType, dataRoleId, roleId, cardIssuerCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ServiceApi#getServiceNames");
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
 **cardIssuerCode** | **String**| Card Issuer Code | [optional]

### Return type

[**ServiceProviderList**](ServiceProviderList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

