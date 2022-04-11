# MerchantAcquirerApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMerchantAcquirer**](MerchantAcquirerApi.md#addMerchantAcquirer) | **POST** /merchantAcquirer | add merchant acquirer
[**getMerchantAcquirers**](MerchantAcquirerApi.md#getMerchantAcquirers) | **GET** /merchantAcquirer | List of  Merchant Acquirer
[**updateMerchantAcquirer**](MerchantAcquirerApi.md#updateMerchantAcquirer) | **PUT** /merchantAcquirer | Update  Merchant Acquirer


<a name="addMerchantAcquirer"></a>
# **addMerchantAcquirer**
> MerchantAcquirerResponse addMerchantAcquirer(userId, userType, dataRoleId, roleId, merchantAcquirer)

add merchant acquirer

Returns a merchantAcquirer

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantAcquirerApi;


MerchantAcquirerApi apiInstance = new MerchantAcquirerApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
MerchantAcquirer merchantAcquirer = new MerchantAcquirer(); // MerchantAcquirer | Contain Merchant Acquirer information in request parameters
try {
    MerchantAcquirerResponse result = apiInstance.addMerchantAcquirer(userId, userType, dataRoleId, roleId, merchantAcquirer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantAcquirerApi#addMerchantAcquirer");
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
 **merchantAcquirer** | [**MerchantAcquirer**](MerchantAcquirer.md)| Contain Merchant Acquirer information in request parameters | [optional]

### Return type

[**MerchantAcquirerResponse**](MerchantAcquirerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getMerchantAcquirers"></a>
# **getMerchantAcquirers**
> MerchantAcquirerList getMerchantAcquirers(userId, userType, dataRoleId, roleId, merchantNumber, merchantAcquirerId, serviceId, cardIssuerCode)

List of  Merchant Acquirer

Returns a merchant

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantAcquirerApi;


MerchantAcquirerApi apiInstance = new MerchantAcquirerApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String merchantNumber = "merchantNumber_example"; // String | merchant Number of merchant acquirer for getting merchant detail.
Integer merchantAcquirerId = 56; // Integer | Id of merchant acquirer for getting merchant detail.
Integer serviceId = 56; // Integer | Service Id of merchant acquirer for getting merchant detail.
String cardIssuerCode = "cardIssuerCode_example"; // String | Card Issuer Code of merchant acquirer for getting merchant detail.
try {
    MerchantAcquirerList result = apiInstance.getMerchantAcquirers(userId, userType, dataRoleId, roleId, merchantNumber, merchantAcquirerId, serviceId, cardIssuerCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantAcquirerApi#getMerchantAcquirers");
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
 **merchantNumber** | **String**| merchant Number of merchant acquirer for getting merchant detail. |
 **merchantAcquirerId** | **Integer**| Id of merchant acquirer for getting merchant detail. | [optional]
 **serviceId** | **Integer**| Service Id of merchant acquirer for getting merchant detail. | [optional]
 **cardIssuerCode** | **String**| Card Issuer Code of merchant acquirer for getting merchant detail. | [optional]

### Return type

[**MerchantAcquirerList**](MerchantAcquirerList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateMerchantAcquirer"></a>
# **updateMerchantAcquirer**
> MerchantAcquirerResponse updateMerchantAcquirer(userId, userType, dataRoleId, roleId, merchantAcquirer)

Update  Merchant Acquirer

Updates  Merchant Acquirer

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantAcquirerApi;


MerchantAcquirerApi apiInstance = new MerchantAcquirerApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
MerchantAcquirer merchantAcquirer = new MerchantAcquirer(); // MerchantAcquirer | Contains Merchant Acquirer information in request parameters
try {
    MerchantAcquirerResponse result = apiInstance.updateMerchantAcquirer(userId, userType, dataRoleId, roleId, merchantAcquirer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantAcquirerApi#updateMerchantAcquirer");
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
 **merchantAcquirer** | [**MerchantAcquirer**](MerchantAcquirer.md)| Contains Merchant Acquirer information in request parameters |

### Return type

[**MerchantAcquirerResponse**](MerchantAcquirerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

