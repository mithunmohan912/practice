# FinancialControlRecordApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFinancialControlRecord**](FinancialControlRecordApi.md#getFinancialControlRecord) | **GET** /financialControlRecord/{fcrId} | Get Financial Control Record by using FcrId.
[**getFinancialControlRecords**](FinancialControlRecordApi.md#getFinancialControlRecords) | **GET** /financialControlRecord | List Financial Control Record by using following filters like - TerminalId, AgentNumber, FCRId, Status, fromDate, toDate.


<a name="getFinancialControlRecord"></a>
# **getFinancialControlRecord**
> FinancialControlRecordResponse getFinancialControlRecord(userId, userType, dataRoleId, roleId, fcrId)

Get Financial Control Record by using FcrId.

Returns Financial Control Record

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.FinancialControlRecordApi;


FinancialControlRecordApi apiInstance = new FinancialControlRecordApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer fcrId = 56; // Integer | Fcr Id
try {
    FinancialControlRecordResponse result = apiInstance.getFinancialControlRecord(userId, userType, dataRoleId, roleId, fcrId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FinancialControlRecordApi#getFinancialControlRecord");
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
 **fcrId** | **Integer**| Fcr Id |

### Return type

[**FinancialControlRecordResponse**](FinancialControlRecordResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getFinancialControlRecords"></a>
# **getFinancialControlRecords**
> FinancialControlRecords getFinancialControlRecords(userId, userType, dataRoleId, roleId, fromDate, toDate, agentNumber, terminalId, fcrId, status)

List Financial Control Record by using following filters like - TerminalId, AgentNumber, FCRId, Status, fromDate, toDate.

Returns Financial Control Record List

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.FinancialControlRecordApi;


FinancialControlRecordApi apiInstance = new FinancialControlRecordApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String fromDate = "fromDate_example"; // String | From Date
String toDate = "toDate_example"; // String | To Date
String agentNumber = "agentNumber_example"; // String | Agent Number
String terminalId = "terminalId_example"; // String | Terminal Id
Integer fcrId = 56; // Integer | FCR Id
String status = "status_example"; // String | Status(Processing Code) of FCR
try {
    FinancialControlRecords result = apiInstance.getFinancialControlRecords(userId, userType, dataRoleId, roleId, fromDate, toDate, agentNumber, terminalId, fcrId, status);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FinancialControlRecordApi#getFinancialControlRecords");
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
 **fromDate** | **String**| From Date |
 **toDate** | **String**| To Date |
 **agentNumber** | **String**| Agent Number | [optional]
 **terminalId** | **String**| Terminal Id | [optional]
 **fcrId** | **Integer**| FCR Id | [optional]
 **status** | **String**| Status(Processing Code) of FCR | [optional]

### Return type

[**FinancialControlRecords**](FinancialControlRecords.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

