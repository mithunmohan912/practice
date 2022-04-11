# BankAccountApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBankAccount**](BankAccountApi.md#addBankAccount) | **POST** /bankAccount | Add bank account in system
[**getBankAccount**](BankAccountApi.md#getBankAccount) | **GET** /bankAccount | Find bank account by using following filters like - accountId,bankAccountName,bankCode,bankAccountPurpose,bankAccountRegistration,bankAccountReference.
[**updateAccount**](BankAccountApi.md#updateAccount) | **PUT** /bankAccount | Update Bank account


<a name="addBankAccount"></a>
# **addBankAccount**
> BankAccountResponse addBankAccount(userId, userType, dataRoleId, roleId, bankAccount)

Add bank account in system

Add bank account in system

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.BankAccountApi;


BankAccountApi apiInstance = new BankAccountApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
BankAccount bankAccount = new BankAccount(); // BankAccount | Contain account information in request parameters
try {
    BankAccountResponse result = apiInstance.addBankAccount(userId, userType, dataRoleId, roleId, bankAccount);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BankAccountApi#addBankAccount");
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
 **bankAccount** | [**BankAccount**](BankAccount.md)| Contain account information in request parameters | [optional]

### Return type

[**BankAccountResponse**](BankAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

<a name="getBankAccount"></a>
# **getBankAccount**
> BankAccounts getBankAccount(userId, userType, dataRoleId, roleId, bankAccountId, accountCode, bankAccountName, bankCode, bankAccountPurpose, bankAccountRegistration, bankAccountReference)

Find bank account by using following filters like - accountId,bankAccountName,bankCode,bankAccountPurpose,bankAccountRegistration,bankAccountReference.

Returns bank account/accounts detail

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.BankAccountApi;


BankAccountApi apiInstance = new BankAccountApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer bankAccountId = 56; // Integer | Bank account ID.
String accountCode = "accountCode_example"; // String | Account code.
String bankAccountName = "bankAccountName_example"; // String | Bank account name.
String bankCode = "bankCode_example"; // String | Bank code.
String bankAccountPurpose = "bankAccountPurpose_example"; // String | Bank account puspose.
String bankAccountRegistration = "bankAccountRegistration_example"; // String | Bank account registration.
String bankAccountReference = "bankAccountReference_example"; // String | Bank account reference.
try {
    BankAccounts result = apiInstance.getBankAccount(userId, userType, dataRoleId, roleId, bankAccountId, accountCode, bankAccountName, bankCode, bankAccountPurpose, bankAccountRegistration, bankAccountReference);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BankAccountApi#getBankAccount");
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
 **bankAccountId** | **Integer**| Bank account ID. | [optional]
 **accountCode** | **String**| Account code. | [optional]
 **bankAccountName** | **String**| Bank account name. | [optional]
 **bankCode** | **String**| Bank code. | [optional]
 **bankAccountPurpose** | **String**| Bank account puspose. | [optional]
 **bankAccountRegistration** | **String**| Bank account registration. | [optional]
 **bankAccountReference** | **String**| Bank account reference. | [optional]

### Return type

[**BankAccounts**](BankAccounts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="updateAccount"></a>
# **updateAccount**
> BankAccountResponse updateAccount(userId, userType, dataRoleId, roleId, bankAccount)

Update Bank account

Update bank account based on provided ID.

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.BankAccountApi;


BankAccountApi apiInstance = new BankAccountApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
BankAccount bankAccount = new BankAccount(); // BankAccount | 
try {
    BankAccountResponse result = apiInstance.updateAccount(userId, userType, dataRoleId, roleId, bankAccount);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BankAccountApi#updateAccount");
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
 **bankAccount** | [**BankAccount**](BankAccount.md)|  | [optional]

### Return type

[**BankAccountResponse**](BankAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

