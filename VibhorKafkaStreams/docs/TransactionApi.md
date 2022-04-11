# TransactionApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**embUpdate**](TransactionApi.md#embUpdate) | **PUT** /transaction | Update Transactions on Emboss.
[**getTransaction**](TransactionApi.md#getTransaction) | **GET** /transaction/{transactionId} | Get Transaction Details based on Transaction Id.
[**getTransactionExport**](TransactionApi.md#getTransactionExport) | **GET** /transactionExport | Find transaction Report in csv format
[**getTransactions**](TransactionApi.md#getTransactions) | **GET** /transaction | Get Transaction Details based on Search criteria.


<a name="embUpdate"></a>
# **embUpdate**
> TransactionsResponse embUpdate(userId, userType, dataRoleId, roleId, transactionEmbUpdate)

Update Transactions on Emboss.

Update Transactions on Emboss.

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TransactionApi;


TransactionApi apiInstance = new TransactionApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
TransactionEmbUpdate transactionEmbUpdate = new TransactionEmbUpdate(); // TransactionEmbUpdate | Updating a merchant to the portal
try {
    TransactionsResponse result = apiInstance.embUpdate(userId, userType, dataRoleId, roleId, transactionEmbUpdate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TransactionApi#embUpdate");
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
 **transactionEmbUpdate** | [**TransactionEmbUpdate**](TransactionEmbUpdate.md)| Updating a merchant to the portal |

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getTransaction"></a>
# **getTransaction**
> TransactionResponse getTransaction(userId, userType, dataRoleId, roleId, transactionId)

Get Transaction Details based on Transaction Id.

Get Transaction Details based on Transaction Id.

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TransactionApi;


TransactionApi apiInstance = new TransactionApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Long transactionId = 132456789; // Long | transactionId
try {
    TransactionResponse result = apiInstance.getTransaction(userId, userType, dataRoleId, roleId, transactionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TransactionApi#getTransaction");
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
 **transactionId** | **Long**| transactionId |

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getTransactionExport"></a>
# **getTransactionExport**
> File getTransactionExport(userId, userType, dataRoleId, roleId, cardNumber, fromDate, toDate, cardType, merchantNumber, agentNumber, terminalId, fcrId, processingCode, cardIssuer, externalTransactionReference, settlementDate, embossSite1, embossSite2)

Find transaction Report in csv format

Returns file of Transaction List

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TransactionApi;


TransactionApi apiInstance = new TransactionApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String cardNumber = "cardNumber_example"; // String | Last four digit of card number
String fromDate = "fromDate_example"; // String | From Date in Date format
String toDate = "toDate_example"; // String | To Date in Date format
String cardType = "cardType_example"; // String | Card Type
String merchantNumber = "merchantNumber_example"; // String | Merchant Number
String agentNumber = "agentNumber_example"; // String | Agent Number
String terminalId = "terminalId_example"; // String | Terminal ID
Integer fcrId = 56; // Integer | Financial Control Record ID
String processingCode = "processingCode_example"; // String | Transaction processing code
String cardIssuer = "cardIssuer_example"; // String | Card Issuer
String externalTransactionReference = "externalTransactionReference_example"; // String | External Transaction Reference
String settlementDate = "settlementDate_example"; // String | Settlement Date
String embossSite1 = on; // String | Emboss Site1
String embossSite2 = on; // String | Emboss Site1
try {
    File result = apiInstance.getTransactionExport(userId, userType, dataRoleId, roleId, cardNumber, fromDate, toDate, cardType, merchantNumber, agentNumber, terminalId, fcrId, processingCode, cardIssuer, externalTransactionReference, settlementDate, embossSite1, embossSite2);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TransactionApi#getTransactionExport");
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
 **cardNumber** | **String**| Last four digit of card number |
 **fromDate** | **String**| From Date in Date format |
 **toDate** | **String**| To Date in Date format |
 **cardType** | **String**| Card Type | [optional]
 **merchantNumber** | **String**| Merchant Number | [optional]
 **agentNumber** | **String**| Agent Number | [optional]
 **terminalId** | **String**| Terminal ID | [optional]
 **fcrId** | **Integer**| Financial Control Record ID | [optional]
 **processingCode** | **String**| Transaction processing code | [optional]
 **cardIssuer** | **String**| Card Issuer | [optional]
 **externalTransactionReference** | **String**| External Transaction Reference | [optional]
 **settlementDate** | **String**| Settlement Date | [optional]
 **embossSite1** | **String**| Emboss Site1 | [optional]
 **embossSite2** | **String**| Emboss Site1 | [optional]

### Return type

[**File**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

<a name="getTransactions"></a>
# **getTransactions**
> TransactionsResponse getTransactions(userId, userType, dataRoleId, roleId, cardNumber, fromDate, toDate, cardType, merchantNumber, agentNumber, terminalId, fcrId, processingCode, cardIssuer, externalTransactionReference, settlementDate, embossSite1, embossSite2)

Get Transaction Details based on Search criteria.

Get Transaction Details based on Search criteria.

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TransactionApi;


TransactionApi apiInstance = new TransactionApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String cardNumber = "cardNumber_example"; // String | Last four digit of card number
String fromDate = "fromDate_example"; // String | From Date in Date format
String toDate = "toDate_example"; // String | To Date in Date format
String cardType = "cardType_example"; // String | Card Type
String merchantNumber = "merchantNumber_example"; // String | Merchant Number
String agentNumber = "agentNumber_example"; // String | Agent Number
String terminalId = "terminalId_example"; // String | Terminal ID
Integer fcrId = 56; // Integer | Financial Control Record ID
String processingCode = "processingCode_example"; // String | Transaction processing code
String cardIssuer = "cardIssuer_example"; // String | Card Issuer
String externalTransactionReference = "externalTransactionReference_example"; // String | External Transaction Reference
String settlementDate = "settlementDate_example"; // String | Settlement Date
String embossSite1 = on; // String | Emboss Site1
String embossSite2 = on; // String | Emboss Site1
try {
    TransactionsResponse result = apiInstance.getTransactions(userId, userType, dataRoleId, roleId, cardNumber, fromDate, toDate, cardType, merchantNumber, agentNumber, terminalId, fcrId, processingCode, cardIssuer, externalTransactionReference, settlementDate, embossSite1, embossSite2);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TransactionApi#getTransactions");
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
 **cardNumber** | **String**| Last four digit of card number |
 **fromDate** | **String**| From Date in Date format |
 **toDate** | **String**| To Date in Date format |
 **cardType** | **String**| Card Type | [optional]
 **merchantNumber** | **String**| Merchant Number | [optional]
 **agentNumber** | **String**| Agent Number | [optional]
 **terminalId** | **String**| Terminal ID | [optional]
 **fcrId** | **Integer**| Financial Control Record ID | [optional]
 **processingCode** | **String**| Transaction processing code | [optional]
 **cardIssuer** | **String**| Card Issuer | [optional]
 **externalTransactionReference** | **String**| External Transaction Reference | [optional]
 **settlementDate** | **String**| Settlement Date | [optional]
 **embossSite1** | **String**| Emboss Site1 | [optional]
 **embossSite2** | **String**| Emboss Site1 | [optional]

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

