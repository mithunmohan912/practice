# CardissuersApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCardIssuers**](CardissuersApi.md#addCardIssuers) | **POST** /cardissuers | Add cardissuers in system
[**getCardIssuers**](CardissuersApi.md#getCardIssuers) | **GET** /cardissuers | Find CardIssuer
[**getCardIssuersNames**](CardissuersApi.md#getCardIssuersNames) | **GET** /cardissuers/cardissuernames | Find CardIssuer Name List
[**updateCardIssuers**](CardissuersApi.md#updateCardIssuers) | **PUT** /cardissuers | Update cardissuers in system


<a name="addCardIssuers"></a>
# **addCardIssuers**
> CardIssuersResponse addCardIssuers(userId, userType, dataRoleId, roleId, cardIssuer)

Add cardissuers in system

Add cardissuers in system

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CardissuersApi;


CardissuersApi apiInstance = new CardissuersApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
CardIssuer cardIssuer = new CardIssuer(); // CardIssuer | Contain CardIssuers information in request parameters
try {
    CardIssuersResponse result = apiInstance.addCardIssuers(userId, userType, dataRoleId, roleId, cardIssuer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CardissuersApi#addCardIssuers");
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
 **cardIssuer** | [**CardIssuer**](CardIssuer.md)| Contain CardIssuers information in request parameters | [optional]

### Return type

[**CardIssuersResponse**](CardIssuersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getCardIssuers"></a>
# **getCardIssuers**
> CardIssuersArrayResponse getCardIssuers(userId, userType, dataRoleId, roleId, cardIssuerCode, mode, serviceId, merchantNumber)

Find CardIssuer

Returns list of CardIssuers

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CardissuersApi;


CardissuersApi apiInstance = new CardissuersApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String cardIssuerCode = "cardIssuerCode_example"; // String | Card Issuer Code
String mode = "mode_example"; // String | MODE
Integer serviceId = 56; // Integer | Acquirer Id
String merchantNumber = 000000000000015; // String | merchant number
try {
    CardIssuersArrayResponse result = apiInstance.getCardIssuers(userId, userType, dataRoleId, roleId, cardIssuerCode, mode, serviceId, merchantNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CardissuersApi#getCardIssuers");
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
 **cardIssuerCode** | **String**| Card Issuer Code | [optional]
 **mode** | **String**| MODE | [optional]
 **serviceId** | **Integer**| Acquirer Id | [optional]
 **merchantNumber** | **String**| merchant number | [optional]

### Return type

[**CardIssuersArrayResponse**](CardIssuersArrayResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getCardIssuersNames"></a>
# **getCardIssuersNames**
> CardIssuerDetailList getCardIssuersNames(userId, userType, dataRoleId, roleId, terminalNumber, agentNumber)

Find CardIssuer Name List

Returns list of CardIssuers Names

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CardissuersApi;


CardissuersApi apiInstance = new CardissuersApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String terminalNumber = "terminalNumber_example"; // String | Terminal Number.
String agentNumber = "agentNumber_example"; // String | Agent Number
try {
    CardIssuerDetailList result = apiInstance.getCardIssuersNames(userId, userType, dataRoleId, roleId, terminalNumber, agentNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CardissuersApi#getCardIssuersNames");
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
 **terminalNumber** | **String**| Terminal Number. | [optional]
 **agentNumber** | **String**| Agent Number | [optional]

### Return type

[**CardIssuerDetailList**](CardIssuerDetailList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateCardIssuers"></a>
# **updateCardIssuers**
> CardIssuersResponse updateCardIssuers(userId, userType, dataRoleId, roleId, cardIssuer)

Update cardissuers in system

Update cardissuers in system

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CardissuersApi;


CardissuersApi apiInstance = new CardissuersApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
CardIssuer cardIssuer = new CardIssuer(); // CardIssuer | Contain CardIssuers information in request parameters
try {
    CardIssuersResponse result = apiInstance.updateCardIssuers(userId, userType, dataRoleId, roleId, cardIssuer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CardissuersApi#updateCardIssuers");
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
 **cardIssuer** | [**CardIssuer**](CardIssuer.md)| Contain CardIssuers information in request parameters | [optional]

### Return type

[**CardIssuersResponse**](CardIssuersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

