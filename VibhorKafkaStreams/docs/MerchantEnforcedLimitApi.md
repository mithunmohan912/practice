# MerchantEnforcedLimitApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMerchantEnforcedLimits**](MerchantEnforcedLimitApi.md#getMerchantEnforcedLimits) | **GET** /merchantEnforcedLimit | Fetching Merchant Enforced Limit Forms
[**isSaleActiveOnMerchant**](MerchantEnforcedLimitApi.md#isSaleActiveOnMerchant) | **GET** /merchantEnforcedLimit/saleActive/{merchantId} | Returns whether Sale is active or not
[**updateMerchantEnforcedLimits**](MerchantEnforcedLimitApi.md#updateMerchantEnforcedLimits) | **PUT** /merchantEnforcedLimit | Associate Enforced Limits with any merchant only if Agent is associated with Merchant


<a name="getMerchantEnforcedLimits"></a>
# **getMerchantEnforcedLimits**
> EnforcedLimitDetails getMerchantEnforcedLimits(userId, userType, dataRoleId, roleId, merchantNumber)

Fetching Merchant Enforced Limit Forms

Returns Merchant Enforced Limit Forms

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantEnforcedLimitApi;


MerchantEnforcedLimitApi apiInstance = new MerchantEnforcedLimitApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String merchantNumber = "merchantNumber_example"; // String | Merchant Number
try {
    EnforcedLimitDetails result = apiInstance.getMerchantEnforcedLimits(userId, userType, dataRoleId, roleId, merchantNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantEnforcedLimitApi#getMerchantEnforcedLimits");
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
 **merchantNumber** | **String**| Merchant Number |

### Return type

[**EnforcedLimitDetails**](EnforcedLimitDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="isSaleActiveOnMerchant"></a>
# **isSaleActiveOnMerchant**
> String isSaleActiveOnMerchant(userId, userType, dataRoleId, roleId, merchantId)

Returns whether Sale is active or not

Find whether Sale is active or not

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantEnforcedLimitApi;


MerchantEnforcedLimitApi apiInstance = new MerchantEnforcedLimitApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String merchantId = "merchantId_example"; // String | Merchant Id
try {
    String result = apiInstance.isSaleActiveOnMerchant(userId, userType, dataRoleId, roleId, merchantId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantEnforcedLimitApi#isSaleActiveOnMerchant");
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
 **merchantId** | **String**| Merchant Id |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="updateMerchantEnforcedLimits"></a>
# **updateMerchantEnforcedLimits**
> EnforcedLimitDetails updateMerchantEnforcedLimits(userId, userType, dataRoleId, roleId, userName, merchantNumber, enforcedLimitDetails)

Associate Enforced Limits with any merchant only if Agent is associated with Merchant

Associate Enforced Limit

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantEnforcedLimitApi;


MerchantEnforcedLimitApi apiInstance = new MerchantEnforcedLimitApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String userName = "userName_example"; // String | User Name
String merchantNumber = "merchantNumber_example"; // String | Merchant Number
List<EnforcedLimitDetails> enforcedLimitDetails = Arrays.asList(null); // List<EnforcedLimitDetails> | Enforced Limit information
try {
    EnforcedLimitDetails result = apiInstance.updateMerchantEnforcedLimits(userId, userType, dataRoleId, roleId, userName, merchantNumber, enforcedLimitDetails);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantEnforcedLimitApi#updateMerchantEnforcedLimits");
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
 **userName** | **String**| User Name |
 **merchantNumber** | **String**| Merchant Number |
 **enforcedLimitDetails** | [**List&lt;EnforcedLimitDetails&gt;**](List.md)| Enforced Limit information |

### Return type

[**EnforcedLimitDetails**](EnforcedLimitDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

