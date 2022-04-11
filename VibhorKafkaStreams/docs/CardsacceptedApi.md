# CardsacceptedApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCardsAccepted**](CardsacceptedApi.md#addCardsAccepted) | **POST** /cardsaccepted | Adding accepted cards.
[**getCardsAcceptedExport**](CardsacceptedApi.md#getCardsAcceptedExport) | **GET** /cardsacceptedExport | Fetch Cards Accepted matching the criteria specified
[**listCardsAccepted**](CardsacceptedApi.md#listCardsAccepted) | **GET** /cardsaccepted | list accepted cards.
[**updateCardsAccepted**](CardsacceptedApi.md#updateCardsAccepted) | **PUT** /cardsaccepted | Update accepted cards.


<a name="addCardsAccepted"></a>
# **addCardsAccepted**
> CardsAcceptedResponse addCardsAccepted(userId, userType, dataRoleId, roleId, cardsAccepted)

Adding accepted cards.

Adding accepted cards

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CardsacceptedApi;


CardsacceptedApi apiInstance = new CardsacceptedApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
CardsAccepted cardsAccepted = new CardsAccepted(); // CardsAccepted | Adding accepted cards
try {
    CardsAcceptedResponse result = apiInstance.addCardsAccepted(userId, userType, dataRoleId, roleId, cardsAccepted);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CardsacceptedApi#addCardsAccepted");
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
 **cardsAccepted** | [**CardsAccepted**](CardsAccepted.md)| Adding accepted cards |

### Return type

[**CardsAcceptedResponse**](CardsAcceptedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getCardsAcceptedExport"></a>
# **getCardsAcceptedExport**
> File getCardsAcceptedExport(userId, userType, dataRoleId, roleId, terminalID, terminalNumber, serviceId, agentNumber, cardIssuerCode, cardAcceptedId)

Fetch Cards Accepted matching the criteria specified

Return CSV Export for Cards Accepted fetched

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CardsacceptedApi;


CardsacceptedApi apiInstance = new CardsacceptedApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String terminalID = "terminalID_example"; // String | Terminal Id.
Integer terminalNumber = 0; // Integer | Terminal Number.
Integer serviceId = 0; // Integer | Service Id.
String agentNumber = "agentNumber_example"; // String | Agent Number
String cardIssuerCode = "cardIssuerCode_example"; // String | Card Issuer Code
Integer cardAcceptedId = 0; // Integer | Card Accepted Id
try {
    File result = apiInstance.getCardsAcceptedExport(userId, userType, dataRoleId, roleId, terminalID, terminalNumber, serviceId, agentNumber, cardIssuerCode, cardAcceptedId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CardsacceptedApi#getCardsAcceptedExport");
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
 **terminalID** | **String**| Terminal Id. | [optional]
 **terminalNumber** | **Integer**| Terminal Number. | [optional] [default to 0]
 **serviceId** | **Integer**| Service Id. | [optional] [default to 0]
 **agentNumber** | **String**| Agent Number | [optional]
 **cardIssuerCode** | **String**| Card Issuer Code | [optional]
 **cardAcceptedId** | **Integer**| Card Accepted Id | [optional] [default to 0]

### Return type

[**File**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

<a name="listCardsAccepted"></a>
# **listCardsAccepted**
> CardsAcceptedArrayResponse listCardsAccepted(userId, userType, dataRoleId, roleId, terminalID, terminalNumber, serviceId, agentNumber, cardIssuerCode, cardAcceptedId, orderId)

list accepted cards.

listing accepted cards

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CardsacceptedApi;


CardsacceptedApi apiInstance = new CardsacceptedApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String terminalID = "terminalID_example"; // String | Terminal Id.
Integer terminalNumber = 0; // Integer | Terminal Number.
Integer serviceId = 0; // Integer | Service Id.
String agentNumber = "agentNumber_example"; // String | Agent Number
String cardIssuerCode = "cardIssuerCode_example"; // String | Card Issuer Code
Integer cardAcceptedId = 0; // Integer | Card Accepted Id
Integer orderId = 56; // Integer | Id of order for getting order detail.
try {
    CardsAcceptedArrayResponse result = apiInstance.listCardsAccepted(userId, userType, dataRoleId, roleId, terminalID, terminalNumber, serviceId, agentNumber, cardIssuerCode, cardAcceptedId, orderId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CardsacceptedApi#listCardsAccepted");
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
 **terminalID** | **String**| Terminal Id. | [optional]
 **terminalNumber** | **Integer**| Terminal Number. | [optional] [default to 0]
 **serviceId** | **Integer**| Service Id. | [optional] [default to 0]
 **agentNumber** | **String**| Agent Number | [optional]
 **cardIssuerCode** | **String**| Card Issuer Code | [optional]
 **cardAcceptedId** | **Integer**| Card Accepted Id | [optional] [default to 0]
 **orderId** | **Integer**| Id of order for getting order detail. | [optional]

### Return type

[**CardsAcceptedArrayResponse**](CardsAcceptedArrayResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateCardsAccepted"></a>
# **updateCardsAccepted**
> CardsAcceptedArrayResponse updateCardsAccepted(userId, userType, dataRoleId, roleId, cardsAccepted)

Update accepted cards.

Updating accepted cards

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.CardsacceptedApi;


CardsacceptedApi apiInstance = new CardsacceptedApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
List<CardsAccepted> cardsAccepted = Arrays.asList(null); // List<CardsAccepted> | updating accepted cards
try {
    CardsAcceptedArrayResponse result = apiInstance.updateCardsAccepted(userId, userType, dataRoleId, roleId, cardsAccepted);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CardsacceptedApi#updateCardsAccepted");
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
 **cardsAccepted** | [**List&lt;CardsAccepted&gt;**](List.md)| updating accepted cards |

### Return type

[**CardsAcceptedArrayResponse**](CardsAcceptedArrayResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

