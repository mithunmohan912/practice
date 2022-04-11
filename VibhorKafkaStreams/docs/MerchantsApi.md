# MerchantsApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMerchant**](MerchantsApi.md#addMerchant) | **POST** /merchants | Add a new merchant to the portal
[**addTestMerchant**](MerchantsApi.md#addTestMerchant) | **POST** /merchants/testMerchant | Add a new test merchant to the portal
[**getMerchantExport**](MerchantsApi.md#getMerchantExport) | **GET** /merchantExport | Fetching Merchant Details based on Search criteria.
[**getMerchants**](MerchantsApi.md#getMerchants) | **GET** /merchants | Fetching Merchant Details based on Search criteria.
[**updateMerchant**](MerchantsApi.md#updateMerchant) | **PUT** /merchants | Update a merchant to the portal


<a name="addMerchant"></a>
# **addMerchant**
> MerchantResponse addMerchant(userId, userType, dataRoleId, roleId, merchant)

Add a new merchant to the portal

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantsApi;


MerchantsApi apiInstance = new MerchantsApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Merchant merchant = new Merchant(); // Merchant | Adding a merchant to the portal
try {
    MerchantResponse result = apiInstance.addMerchant(userId, userType, dataRoleId, roleId, merchant);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantsApi#addMerchant");
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
 **merchant** | [**Merchant**](Merchant.md)| Adding a merchant to the portal |

### Return type

[**MerchantResponse**](MerchantResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

<a name="addTestMerchant"></a>
# **addTestMerchant**
> BnaApiResponse addTestMerchant(userId, userType, dataRoleId, roleId, merchant)

Add a new test merchant to the portal

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantsApi;


MerchantsApi apiInstance = new MerchantsApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Merchant merchant = new Merchant(); // Merchant | Adding a test merchant to the portal
try {
    BnaApiResponse result = apiInstance.addTestMerchant(userId, userType, dataRoleId, roleId, merchant);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantsApi#addTestMerchant");
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
 **merchant** | [**Merchant**](Merchant.md)| Adding a test merchant to the portal |

### Return type

[**BnaApiResponse**](BnaApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

<a name="getMerchantExport"></a>
# **getMerchantExport**
> File getMerchantExport(userId, userType, dataRoleId, roleId, name, merchantNumber, mode, status, bankAccountId, webMerchantFlag, customerSupplierAccountCode, serviceOperatorCode, referredBy)

Fetching Merchant Details based on Search criteria.

Returning CSV Export for List of Merchant Fetched

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantsApi;


MerchantsApi apiInstance = new MerchantsApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String name = "name_example"; // String | Name of the merchant
String merchantNumber = "merchantNumber_example"; // String | Merchant number
String mode = "mode_example"; // String | Mode of Merchant
String status = "status_example"; // String | Status of Merchant
Integer bankAccountId = 56; // Integer | bank account id
String webMerchantFlag = "webMerchantFlag_example"; // String | Internet Merchant.
String customerSupplierAccountCode = "customerSupplierAccountCode_example"; // String | Customer Supplier Account Code
String serviceOperatorCode = "serviceOperatorCode_example"; // String | Service Operator Code
String referredBy = "referredBy_example"; // String | Referred by Code prompts for Customer specific search information
try {
    File result = apiInstance.getMerchantExport(userId, userType, dataRoleId, roleId, name, merchantNumber, mode, status, bankAccountId, webMerchantFlag, customerSupplierAccountCode, serviceOperatorCode, referredBy);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantsApi#getMerchantExport");
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
 **name** | **String**| Name of the merchant | [optional]
 **merchantNumber** | **String**| Merchant number | [optional]
 **mode** | **String**| Mode of Merchant | [optional] [enum: EMB_REG_REQD, EMBOSS_REG, LIVE, REG_REQD, SUSPENDED, TEST]
 **status** | **String**| Status of Merchant | [optional] [enum: NORMAL, TRAINING]
 **bankAccountId** | **Integer**| bank account id | [optional]
 **webMerchantFlag** | **String**| Internet Merchant. | [optional]
 **customerSupplierAccountCode** | **String**| Customer Supplier Account Code | [optional]
 **serviceOperatorCode** | **String**| Service Operator Code | [optional]
 **referredBy** | **String**| Referred by Code prompts for Customer specific search information | [optional]

### Return type

[**File**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

<a name="getMerchants"></a>
# **getMerchants**
> MerchantsResponse getMerchants(userId, userType, dataRoleId, roleId, name, merchantNumber, mode, status, bankAccountId, webMerchantFlag, customerSupplierAccountCode, serviceOperatorCode, referredBy)

Fetching Merchant Details based on Search criteria.

Fetching Merchant Details based on Search criteria.

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantsApi;


MerchantsApi apiInstance = new MerchantsApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String name = "name_example"; // String | Name of the merchant
String merchantNumber = "merchantNumber_example"; // String | Merchant number
String mode = "mode_example"; // String | Mode of Merchant
String status = "status_example"; // String | Status of Merchant
Integer bankAccountId = 56; // Integer | bank account id
String webMerchantFlag = "webMerchantFlag_example"; // String | Internet Merchant.
String customerSupplierAccountCode = "customerSupplierAccountCode_example"; // String | Customer Supplier Account Code
String serviceOperatorCode = "serviceOperatorCode_example"; // String | Service Operator Code
String referredBy = "referredBy_example"; // String | Referred by Code prompts for Customer specific search information
try {
    MerchantsResponse result = apiInstance.getMerchants(userId, userType, dataRoleId, roleId, name, merchantNumber, mode, status, bankAccountId, webMerchantFlag, customerSupplierAccountCode, serviceOperatorCode, referredBy);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantsApi#getMerchants");
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
 **name** | **String**| Name of the merchant | [optional]
 **merchantNumber** | **String**| Merchant number | [optional]
 **mode** | **String**| Mode of Merchant | [optional] [enum: EMB_REG_REQD, EMBOSS_REG, LIVE, REG_REQD, SUSPENDED, TEST]
 **status** | **String**| Status of Merchant | [optional] [enum: NORMAL, TRAINING]
 **bankAccountId** | **Integer**| bank account id | [optional]
 **webMerchantFlag** | **String**| Internet Merchant. | [optional]
 **customerSupplierAccountCode** | **String**| Customer Supplier Account Code | [optional]
 **serviceOperatorCode** | **String**| Service Operator Code | [optional]
 **referredBy** | **String**| Referred by Code prompts for Customer specific search information | [optional]

### Return type

[**MerchantsResponse**](MerchantsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="updateMerchant"></a>
# **updateMerchant**
> MerchantResponse updateMerchant(userId, userType, dataRoleId, roleId, merchant)

Update a merchant to the portal

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.MerchantsApi;


MerchantsApi apiInstance = new MerchantsApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Merchant merchant = new Merchant(); // Merchant | Updating a merchant to the portal
try {
    MerchantResponse result = apiInstance.updateMerchant(userId, userType, dataRoleId, roleId, merchant);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MerchantsApi#updateMerchant");
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
 **merchant** | [**Merchant**](Merchant.md)| Updating a merchant to the portal |

### Return type

[**MerchantResponse**](MerchantResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

