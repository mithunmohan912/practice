# CustomersupplieraccountApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCustomerSupplierAccount**](CustomersupplieraccountApi.md#addCustomerSupplierAccount) | **POST** /customersupplieraccounts | Add customersupplieraccount in system
[**getCustomerSupplierAccountExport**](CustomersupplieraccountApi.md#getCustomerSupplierAccountExport) | **GET** /customersupplieraccountExport | Fetch Customer Supplier Accounts matching the criteria specified
[**getCustomerSupplierAccounts**](CustomersupplieraccountApi.md#getCustomerSupplierAccounts) | **GET** /customersupplieraccounts | Find Customer Supplier Account
[**getCustomerSupplierAccountsByBankAccount**](CustomersupplieraccountApi.md#getCustomerSupplierAccountsByBankAccount) | **GET** /customersupplieraccounts/byBankAccount | Find Customer Supplier Account by bankAccountId
[**updateCustomerSupplierAccount**](CustomersupplieraccountApi.md#updateCustomerSupplierAccount) | **PUT** /customersupplieraccounts | Update a CustomerSupplierAccount


<a name="addCustomerSupplierAccount"></a>
# **addCustomerSupplierAccount**
> CustomerSupplierAccountResponse addCustomerSupplierAccount(userId, userType, dataRoleId, roleId, customerSupplierAccount)

Add customersupplieraccount in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CustomersupplieraccountApi;


CustomersupplieraccountApi apiInstance = new CustomersupplieraccountApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
CustomerSupplierAccount customerSupplierAccount = new CustomerSupplierAccount(); // CustomerSupplierAccount | Contain CustomerSupplierAccount information in request
try {
    CustomerSupplierAccountResponse result = apiInstance.addCustomerSupplierAccount(userId, userType, dataRoleId, roleId, customerSupplierAccount);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomersupplieraccountApi#addCustomerSupplierAccount");
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
 **customerSupplierAccount** | [**CustomerSupplierAccount**](CustomerSupplierAccount.md)| Contain CustomerSupplierAccount information in request |

### Return type

[**CustomerSupplierAccountResponse**](CustomerSupplierAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

<a name="getCustomerSupplierAccountExport"></a>
# **getCustomerSupplierAccountExport**
> File getCustomerSupplierAccountExport(userId, userType, dataRoleId, roleId, customerCode, customerName, type, nameAbbreviation, mode, accountManagerName, referredByCode, customerSupplierType, financialPartnerCode)

Fetch Customer Supplier Accounts matching the criteria specified

Return CSV Export for Customer Supplier Accounts fetched

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CustomersupplieraccountApi;


CustomersupplieraccountApi apiInstance = new CustomersupplieraccountApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String customerCode = "customerCode_example"; // String | Customer-Code of Customer Supplier Account
String customerName = "customerName_example"; // String | Customer-Name of Customer Supplier Account
String type = "type_example"; // String | Type of Customer Supplier Account
String nameAbbreviation = "nameAbbreviation_example"; // String | Name-Abbreviation of Customer Supplier Account
String mode = "mode_example"; // String | Mode of Customer Supplier Account
String accountManagerName = "accountManagerName_example"; // String | Account Manager Name of Customer Supplier Account for getting Customer Supplier Account detail. (Note: below list is dummy.)
String referredByCode = "referredByCode_example"; // String | Referred Code of Customer Supplier Account
String customerSupplierType = "customerSupplierType_example"; // String | Customer Supplier Type i.e. CUSTOMER , SUPPLIER , BOTH
String financialPartnerCode = "financialPartnerCode_example"; // String | Partner code used for Financial Purpose
try {
    File result = apiInstance.getCustomerSupplierAccountExport(userId, userType, dataRoleId, roleId, customerCode, customerName, type, nameAbbreviation, mode, accountManagerName, referredByCode, customerSupplierType, financialPartnerCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomersupplieraccountApi#getCustomerSupplierAccountExport");
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
 **customerCode** | **String**| Customer-Code of Customer Supplier Account | [optional]
 **customerName** | **String**| Customer-Name of Customer Supplier Account | [optional]
 **type** | **String**| Type of Customer Supplier Account | [optional] [enum: MERCHANT, SO, SP-ISO]
 **nameAbbreviation** | **String**| Name-Abbreviation of Customer Supplier Account | [optional]
 **mode** | **String**| Mode of Customer Supplier Account | [optional] [enum: LIVE, ONLINE_REG, REG_REQD, SUSPENDED]
 **accountManagerName** | **String**| Account Manager Name of Customer Supplier Account for getting Customer Supplier Account detail. (Note: below list is dummy.) | [optional] [enum: Jet, John, Test]
 **referredByCode** | **String**| Referred Code of Customer Supplier Account | [optional]
 **customerSupplierType** | **String**| Customer Supplier Type i.e. CUSTOMER , SUPPLIER , BOTH | [optional]
 **financialPartnerCode** | **String**| Partner code used for Financial Purpose | [optional]

### Return type

[**File**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

<a name="getCustomerSupplierAccounts"></a>
# **getCustomerSupplierAccounts**
> CustomerSupplierAccounts getCustomerSupplierAccounts(userId, userType, dataRoleId, roleId, customerCode, customerName, type, nameAbbreviation, mode, accountManagerName, referredByCode, customerSupplierType, financialPartnerCode)

Find Customer Supplier Account

Returns a Customer Supplier Accounts

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CustomersupplieraccountApi;


CustomersupplieraccountApi apiInstance = new CustomersupplieraccountApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String customerCode = "customerCode_example"; // String | Customer-Code of Customer Supplier Account
String customerName = "customerName_example"; // String | Customer-Name of Customer Supplier Account
String type = "type_example"; // String | Type of Customer Supplier Account
String nameAbbreviation = "nameAbbreviation_example"; // String | Name-Abbreviation of Customer Supplier Account
String mode = "mode_example"; // String | Mode of Customer Supplier Account
String accountManagerName = "accountManagerName_example"; // String | Account Manager Name of Customer Supplier Account for getting Customer Supplier Account detail. (Note: below list is dummy.)
String referredByCode = "referredByCode_example"; // String | Referred Code of Customer Supplier Account
String customerSupplierType = "customerSupplierType_example"; // String | Customer Supplier Type i.e. CUSTOMER , SUPPLIER , BOTH
String financialPartnerCode = "financialPartnerCode_example"; // String | Partner code used for Financial Purpose
try {
    CustomerSupplierAccounts result = apiInstance.getCustomerSupplierAccounts(userId, userType, dataRoleId, roleId, customerCode, customerName, type, nameAbbreviation, mode, accountManagerName, referredByCode, customerSupplierType, financialPartnerCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomersupplieraccountApi#getCustomerSupplierAccounts");
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
 **customerCode** | **String**| Customer-Code of Customer Supplier Account | [optional]
 **customerName** | **String**| Customer-Name of Customer Supplier Account | [optional]
 **type** | **String**| Type of Customer Supplier Account | [optional] [enum: MERCHANT, SO, SP-ISO]
 **nameAbbreviation** | **String**| Name-Abbreviation of Customer Supplier Account | [optional]
 **mode** | **String**| Mode of Customer Supplier Account | [optional] [enum: LIVE, ONLINE_REG, REG_REQD, SUSPENDED]
 **accountManagerName** | **String**| Account Manager Name of Customer Supplier Account for getting Customer Supplier Account detail. (Note: below list is dummy.) | [optional] [enum: Jet, John, Test]
 **referredByCode** | **String**| Referred Code of Customer Supplier Account | [optional]
 **customerSupplierType** | **String**| Customer Supplier Type i.e. CUSTOMER , SUPPLIER , BOTH | [optional]
 **financialPartnerCode** | **String**| Partner code used for Financial Purpose | [optional]

### Return type

[**CustomerSupplierAccounts**](CustomerSupplierAccounts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="getCustomerSupplierAccountsByBankAccount"></a>
# **getCustomerSupplierAccountsByBankAccount**
> CustomerSupplierAccounts getCustomerSupplierAccountsByBankAccount(userId, userType, dataRoleId, roleId, bankAccountId)

Find Customer Supplier Account by bankAccountId

Returns a Customer Supplier Accounts

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CustomersupplieraccountApi;


CustomersupplieraccountApi apiInstance = new CustomersupplieraccountApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer bankAccountId = 56; // Integer | bankAccountId of Customer Supplier Account
try {
    CustomerSupplierAccounts result = apiInstance.getCustomerSupplierAccountsByBankAccount(userId, userType, dataRoleId, roleId, bankAccountId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomersupplieraccountApi#getCustomerSupplierAccountsByBankAccount");
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
 **bankAccountId** | **Integer**| bankAccountId of Customer Supplier Account |

### Return type

[**CustomerSupplierAccounts**](CustomerSupplierAccounts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="updateCustomerSupplierAccount"></a>
# **updateCustomerSupplierAccount**
> CustomerSupplierAccountResponse updateCustomerSupplierAccount(userId, userType, dataRoleId, roleId, customerSupplierAccount)

Update a CustomerSupplierAccount

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CustomersupplieraccountApi;


CustomersupplieraccountApi apiInstance = new CustomersupplieraccountApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
CustomerSupplierAccount customerSupplierAccount = new CustomerSupplierAccount(); // CustomerSupplierAccount | Updating a CustomerSupplierAccount
try {
    CustomerSupplierAccountResponse result = apiInstance.updateCustomerSupplierAccount(userId, userType, dataRoleId, roleId, customerSupplierAccount);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomersupplieraccountApi#updateCustomerSupplierAccount");
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
 **customerSupplierAccount** | [**CustomerSupplierAccount**](CustomerSupplierAccount.md)| Updating a CustomerSupplierAccount |

### Return type

[**CustomerSupplierAccountResponse**](CustomerSupplierAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

