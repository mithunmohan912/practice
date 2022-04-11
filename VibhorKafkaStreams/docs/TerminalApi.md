# TerminalApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTerminal**](TerminalApi.md#addTerminal) | **POST** /terminals | Create a terminal
[**addTestTerminal**](TerminalApi.md#addTestTerminal) | **POST** /terminals/test | Add Test Terminal  in system
[**getPosTerminals**](TerminalApi.md#getPosTerminals) | **GET** /terminals/pos | Get POS Terminals
[**getTerminal**](TerminalApi.md#getTerminal) | **GET** /terminals | Find Terminal
[**getTerminalExport**](TerminalApi.md#getTerminalExport) | **GET** /terminalExport | Find Terminals matching the Criteria
[**updateTerminal**](TerminalApi.md#updateTerminal) | **PUT** /terminals | Update a Terminal


<a name="addTerminal"></a>
# **addTerminal**
> TerminalResponse addTerminal(userId, userType, dataRoleId, roleId, terminal)

Create a terminal

Create a   Terminal

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalApi;


TerminalApi apiInstance = new TerminalApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Terminal terminal = new Terminal(); // Terminal | Create  a Terminal
try {
    TerminalResponse result = apiInstance.addTerminal(userId, userType, dataRoleId, roleId, terminal);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalApi#addTerminal");
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
 **terminal** | [**Terminal**](Terminal.md)| Create  a Terminal |

### Return type

[**TerminalResponse**](TerminalResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="addTestTerminal"></a>
# **addTestTerminal**
> BnaApiResponse addTestTerminal(userId, userType, dataRoleId, roleId, testTerminal)

Add Test Terminal  in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalApi;


TerminalApi apiInstance = new TerminalApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
TestTerminal testTerminal = new TestTerminal(); // TestTerminal | Contain Test Terminal information in request parameters
try {
    BnaApiResponse result = apiInstance.addTestTerminal(userId, userType, dataRoleId, roleId, testTerminal);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalApi#addTestTerminal");
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
 **testTerminal** | [**TestTerminal**](TestTerminal.md)| Contain Test Terminal information in request parameters |

### Return type

[**BnaApiResponse**](BnaApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

<a name="getPosTerminals"></a>
# **getPosTerminals**
> PosTerminals getPosTerminals(userId, userType, dataRoleId, roleId, typeNumber, typeOfUser)

Get POS Terminals

Returns a Terminals

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalApi;


TerminalApi apiInstance = new TerminalApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String typeNumber = "typeNumber_example"; // String | type Number
String typeOfUser = "typeOfUser_example"; // String | type of user
try {
    PosTerminals result = apiInstance.getPosTerminals(userId, userType, dataRoleId, roleId, typeNumber, typeOfUser);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalApi#getPosTerminals");
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
 **typeNumber** | **String**| type Number | [optional]
 **typeOfUser** | **String**| type of user | [optional]

### Return type

[**PosTerminals**](PosTerminals.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getTerminal"></a>
# **getTerminal**
> Terminals getTerminal(userId, userType, dataRoleId, roleId, terminalId, merchantNumber, mode, agentNumber, orderId, financialAssign, acquirerMid)

Find Terminal

Returns a Terminal

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalApi;


TerminalApi apiInstance = new TerminalApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String terminalId = "terminalId_example"; // String | Terminal Id
String merchantNumber = "merchantNumber_example"; // String | merchantNumber of Terminal
String mode = "mode_example"; // String | Mode of Terminal
String agentNumber = "agentNumber_example"; // String | agentNumber of Terminal
String orderId = "orderId_example"; // String | Order Id of Terminal
String financialAssign = "financialAssign_example"; // String | assign of Terminal
String acquirerMid = "acquirerMid_example"; // String | Mid assigned by Acquirer
try {
    Terminals result = apiInstance.getTerminal(userId, userType, dataRoleId, roleId, terminalId, merchantNumber, mode, agentNumber, orderId, financialAssign, acquirerMid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalApi#getTerminal");
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
 **terminalId** | **String**| Terminal Id | [optional]
 **merchantNumber** | **String**| merchantNumber of Terminal | [optional]
 **mode** | **String**| Mode of Terminal | [optional] [enum: EMB_REG_REQD, EMBOSS_REG, LIVE, REG_REQD, SUSPENDED, TEST, TO_BE_SUSPEND]
 **agentNumber** | **String**| agentNumber of Terminal | [optional]
 **orderId** | **String**| Order Id of Terminal | [optional]
 **financialAssign** | **String**| assign of Terminal | [optional]
 **acquirerMid** | **String**| Mid assigned by Acquirer | [optional]

### Return type

[**Terminals**](Terminals.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getTerminalExport"></a>
# **getTerminalExport**
> File getTerminalExport(userId, userType, dataRoleId, roleId, terminalId, merchantNumber, mode, agentNumber, orderId, financialAssign, acquirerMid)

Find Terminals matching the Criteria

Returns a CSV Export for List of Terminals

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalApi;


TerminalApi apiInstance = new TerminalApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String terminalId = "terminalId_example"; // String | Terminal Id
String merchantNumber = "merchantNumber_example"; // String | merchantNumber of Terminal
String mode = "mode_example"; // String | Mode of Terminal
String agentNumber = "agentNumber_example"; // String | agentNumber of Terminal
String orderId = "orderId_example"; // String | Order Id of Terminal
String financialAssign = "financialAssign_example"; // String | assign of Terminal
String acquirerMid = "acquirerMid_example"; // String | Mid assigned by Acquirer
try {
    File result = apiInstance.getTerminalExport(userId, userType, dataRoleId, roleId, terminalId, merchantNumber, mode, agentNumber, orderId, financialAssign, acquirerMid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalApi#getTerminalExport");
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
 **terminalId** | **String**| Terminal Id | [optional]
 **merchantNumber** | **String**| merchantNumber of Terminal | [optional]
 **mode** | **String**| Mode of Terminal | [optional] [enum: EMB_REG_REQD, EMBOSS_REG, LIVE, REG_REQD, SUSPENDED, TEST, TO_BE_SUSPEND]
 **agentNumber** | **String**| agentNumber of Terminal | [optional]
 **orderId** | **String**| Order Id of Terminal | [optional]
 **financialAssign** | **String**| assign of Terminal | [optional]
 **acquirerMid** | **String**| Mid assigned by Acquirer | [optional]

### Return type

[**File**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

<a name="updateTerminal"></a>
# **updateTerminal**
> TerminalResponse updateTerminal(userId, userType, dataRoleId, roleId, terminal)

Update a Terminal

Update  Terminal

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalApi;


TerminalApi apiInstance = new TerminalApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Terminal terminal = new Terminal(); // Terminal | Updating a Terminal
try {
    TerminalResponse result = apiInstance.updateTerminal(userId, userType, dataRoleId, roleId, terminal);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalApi#updateTerminal");
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
 **terminal** | [**Terminal**](Terminal.md)| Updating a Terminal |

### Return type

[**TerminalResponse**](TerminalResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

