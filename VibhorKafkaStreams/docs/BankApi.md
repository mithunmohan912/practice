# BankApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBank**](BankApi.md#addBank) | **POST** /bank | Add bank in system
[**getBanks**](BankApi.md#getBanks) | **GET** /bank | Find bank by search criteria
[**updateBank**](BankApi.md#updateBank) | **PUT** /bank | Update bank in system


<a name="addBank"></a>
# **addBank**
> BankResponse addBank(userId, userType, dataRoleId, roleId, bank)

Add bank in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.BankApi;


BankApi apiInstance = new BankApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Bank bank = new Bank(); // Bank | Contain Bank information in request
try {
    BankResponse result = apiInstance.addBank(userId, userType, dataRoleId, roleId, bank);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BankApi#addBank");
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
 **bank** | [**Bank**](Bank.md)| Contain Bank information in request |

### Return type

[**BankResponse**](BankResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

<a name="getBanks"></a>
# **getBanks**
> Banks getBanks(userId, userType, dataRoleId, roleId, bankId, bankCode, bankName, branchName)

Find bank by search criteria

Returns a bank

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.BankApi;


BankApi apiInstance = new BankApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer bankId = 56; // Integer | Id of bank
String bankCode = "bankCode_example"; // String | Bank code
String bankName = "bankName_example"; // String | Name of bank
String branchName = "branchName_example"; // String | Name of branch
try {
    Banks result = apiInstance.getBanks(userId, userType, dataRoleId, roleId, bankId, bankCode, bankName, branchName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BankApi#getBanks");
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
 **bankId** | **Integer**| Id of bank | [optional]
 **bankCode** | **String**| Bank code | [optional]
 **bankName** | **String**| Name of bank | [optional]
 **branchName** | **String**| Name of branch | [optional]

### Return type

[**Banks**](Banks.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="updateBank"></a>
# **updateBank**
> BankResponse updateBank(userId, userType, dataRoleId, roleId, bank)

Update bank in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.BankApi;


BankApi apiInstance = new BankApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Bank bank = new Bank(); // Bank | Contain Bank information in request
try {
    BankResponse result = apiInstance.updateBank(userId, userType, dataRoleId, roleId, bank);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BankApi#updateBank");
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
 **bank** | [**Bank**](Bank.md)| Contain Bank information in request |

### Return type

[**BankResponse**](BankResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

