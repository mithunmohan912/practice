# AuthorisationApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuthorisation**](AuthorisationApi.md#getAuthorisation) | **GET** /authorisation/{authorisationId} | get Authorisation
[**getAuthorisations**](AuthorisationApi.md#getAuthorisations) | **GET** /authorisation | Find Authorisation List
[**getAuthorisationsExport**](AuthorisationApi.md#getAuthorisationsExport) | **GET** /authorisationExport | Find Records of Authorisation List in csv Format File


<a name="getAuthorisation"></a>
# **getAuthorisation**
> AuthorisationResponse getAuthorisation(userId, userType, dataRoleId, roleId, authorisationId)

get Authorisation

Returns Authorisation

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AuthorisationApi;


AuthorisationApi apiInstance = new AuthorisationApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Long authorisationId = 56L; // Long | authID
try {
    AuthorisationResponse result = apiInstance.getAuthorisation(userId, userType, dataRoleId, roleId, authorisationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AuthorisationApi#getAuthorisation");
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
 **authorisationId** | **Long**| authID |

### Return type

[**AuthorisationResponse**](AuthorisationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAuthorisations"></a>
# **getAuthorisations**
> Authorisations getAuthorisations(userId, userType, dataRoleId, roleId, fromDate, toDate, cardNumber, terminalId, agentNumber, type, responseCode)

Find Authorisation List

Returns Authorisation List

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AuthorisationApi;


AuthorisationApi apiInstance = new AuthorisationApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String fromDate = 20190401; // String | from date
String toDate = 20190401; // String | toDate
String cardNumber = "cardNumber_example"; // String | cardNumber
String terminalId = "terminalId_example"; // String | terminalId
String agentNumber = "agentNumber_example"; // String | agentNumber
String type = "type_example"; // String | type
String responseCode = "responseCode_example"; // String | responseCode
try {
    Authorisations result = apiInstance.getAuthorisations(userId, userType, dataRoleId, roleId, fromDate, toDate, cardNumber, terminalId, agentNumber, type, responseCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AuthorisationApi#getAuthorisations");
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
 **fromDate** | **String**| from date |
 **toDate** | **String**| toDate |
 **cardNumber** | **String**| cardNumber |
 **terminalId** | **String**| terminalId | [optional]
 **agentNumber** | **String**| agentNumber | [optional]
 **type** | **String**| type | [optional]
 **responseCode** | **String**| responseCode | [optional]

### Return type

[**Authorisations**](Authorisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAuthorisationsExport"></a>
# **getAuthorisationsExport**
> File getAuthorisationsExport(userId, userType, dataRoleId, roleId, fromDate, toDate, cardNumber, terminalId, agentNumber, type, responseCode)

Find Records of Authorisation List in csv Format File

Returns Records of Authorisation List in csv File

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AuthorisationApi;


AuthorisationApi apiInstance = new AuthorisationApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String fromDate = 20190401; // String | from date
String toDate = 20190401; // String | toDate
String cardNumber = "cardNumber_example"; // String | cardNumber
String terminalId = "terminalId_example"; // String | terminalId
String agentNumber = "agentNumber_example"; // String | agentNumber
String type = "type_example"; // String | type
String responseCode = "responseCode_example"; // String | responseCode
try {
    File result = apiInstance.getAuthorisationsExport(userId, userType, dataRoleId, roleId, fromDate, toDate, cardNumber, terminalId, agentNumber, type, responseCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AuthorisationApi#getAuthorisationsExport");
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
 **fromDate** | **String**| from date |
 **toDate** | **String**| toDate |
 **cardNumber** | **String**| cardNumber |
 **terminalId** | **String**| terminalId | [optional]
 **agentNumber** | **String**| agentNumber | [optional]
 **type** | **String**| type | [optional]
 **responseCode** | **String**| responseCode | [optional]

### Return type

[**File**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

