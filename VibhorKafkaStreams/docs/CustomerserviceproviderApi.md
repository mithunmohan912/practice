# CustomerserviceproviderApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCustomerServiceProvider**](CustomerserviceproviderApi.md#addCustomerServiceProvider) | **POST** /customerserviceproviders | Add customer service provider in system
[**getCustomerServiceProviders**](CustomerserviceproviderApi.md#getCustomerServiceProviders) | **GET** /customerserviceproviders | Find Customer Service Provider
[**updateCustomerSPISO**](CustomerserviceproviderApi.md#updateCustomerSPISO) | **PUT** /customerSPISO | Update customer sp iso in system
[**updateCustomerServiceProvider**](CustomerserviceproviderApi.md#updateCustomerServiceProvider) | **PUT** /customerserviceproviders | Update customer service provider in system


<a name="addCustomerServiceProvider"></a>
# **addCustomerServiceProvider**
> CustomerServiceProviderResponse addCustomerServiceProvider(userId, userType, dataRoleId, roleId, customerServiceProvider)

Add customer service provider in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CustomerserviceproviderApi;


CustomerserviceproviderApi apiInstance = new CustomerserviceproviderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
CustomerServiceProvider customerServiceProvider = new CustomerServiceProvider(); // CustomerServiceProvider | Contain Customer Service Provider information in request parameters
try {
    CustomerServiceProviderResponse result = apiInstance.addCustomerServiceProvider(userId, userType, dataRoleId, roleId, customerServiceProvider);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomerserviceproviderApi#addCustomerServiceProvider");
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
 **customerServiceProvider** | [**CustomerServiceProvider**](CustomerServiceProvider.md)| Contain Customer Service Provider information in request parameters |

### Return type

[**CustomerServiceProviderResponse**](CustomerServiceProviderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

<a name="getCustomerServiceProviders"></a>
# **getCustomerServiceProviders**
> CustomerServiceProviders getCustomerServiceProviders(userId, userType, dataRoleId, roleId, serviceOperatorName, serviceProviderName, serviceProviderType, mode, customerCode)

Find Customer Service Provider

Returns list of Customer Service Provider

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CustomerserviceproviderApi;


CustomerserviceproviderApi apiInstance = new CustomerserviceproviderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String serviceOperatorName = "serviceOperatorName_example"; // String | Code of Customer Service Operator for getting Customer Service Provider details.
String serviceProviderName = "serviceProviderName_example"; // String | Name of Service Provider Account for getting Customer Service Provider details.
String serviceProviderType = "serviceProviderType_example"; // String | Type of Customer Service Provider for getting Customer Service Provider details.
String mode = "mode_example"; // String | Mode of Customer Service Provider for getting Customer Service Provider details.
String customerCode = "customerCode_example"; // String | Customer supplier account code for getting Customer Service Provider details.
try {
    CustomerServiceProviders result = apiInstance.getCustomerServiceProviders(userId, userType, dataRoleId, roleId, serviceOperatorName, serviceProviderName, serviceProviderType, mode, customerCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomerserviceproviderApi#getCustomerServiceProviders");
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
 **serviceOperatorName** | **String**| Code of Customer Service Operator for getting Customer Service Provider details. | [optional]
 **serviceProviderName** | **String**| Name of Service Provider Account for getting Customer Service Provider details. | [optional]
 **serviceProviderType** | **String**| Type of Customer Service Provider for getting Customer Service Provider details. | [optional] [enum: MERCHANT, SO, SP-ISO]
 **mode** | **String**| Mode of Customer Service Provider for getting Customer Service Provider details. | [optional] [enum: LIVE, ONLINE_REG, REG_REQD, SUSPENDED]
 **customerCode** | **String**| Customer supplier account code for getting Customer Service Provider details. | [optional]

### Return type

[**CustomerServiceProviders**](CustomerServiceProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="updateCustomerSPISO"></a>
# **updateCustomerSPISO**
> CustomerServiceProviderResponse updateCustomerSPISO(userId, userType, dataRoleId, roleId, customerServiceProvider)

Update customer sp iso in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CustomerserviceproviderApi;


CustomerserviceproviderApi apiInstance = new CustomerserviceproviderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
CustomerServiceProvider customerServiceProvider = new CustomerServiceProvider(); // CustomerServiceProvider | Contain Customer Service Provider information in request parameters
try {
    CustomerServiceProviderResponse result = apiInstance.updateCustomerSPISO(userId, userType, dataRoleId, roleId, customerServiceProvider);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomerserviceproviderApi#updateCustomerSPISO");
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
 **customerServiceProvider** | [**CustomerServiceProvider**](CustomerServiceProvider.md)| Contain Customer Service Provider information in request parameters |

### Return type

[**CustomerServiceProviderResponse**](CustomerServiceProviderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

<a name="updateCustomerServiceProvider"></a>
# **updateCustomerServiceProvider**
> CustomerServiceProviderResponse updateCustomerServiceProvider(userId, userType, dataRoleId, roleId, customerServiceProvider)

Update customer service provider in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CustomerserviceproviderApi;


CustomerserviceproviderApi apiInstance = new CustomerserviceproviderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
CustomerServiceProvider customerServiceProvider = new CustomerServiceProvider(); // CustomerServiceProvider | Contain Customer Service Provider information in request parameters
try {
    CustomerServiceProviderResponse result = apiInstance.updateCustomerServiceProvider(userId, userType, dataRoleId, roleId, customerServiceProvider);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomerserviceproviderApi#updateCustomerServiceProvider");
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
 **customerServiceProvider** | [**CustomerServiceProvider**](CustomerServiceProvider.md)| Contain Customer Service Provider information in request parameters |

### Return type

[**CustomerServiceProviderResponse**](CustomerServiceProviderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

