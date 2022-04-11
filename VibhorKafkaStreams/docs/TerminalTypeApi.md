# TerminalTypeApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTerminalType**](TerminalTypeApi.md#getTerminalType) | **GET** /terminalType | List  of Terminal Type


<a name="getTerminalType"></a>
# **getTerminalType**
> TerminalTypeList getTerminalType(userId, userType, dataRoleId, roleId, description, transactionMode)

List  of Terminal Type

Returns List of Terminal Type

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalTypeApi;


TerminalTypeApi apiInstance = new TerminalTypeApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String description = "description_example"; // String | Available description for Listing Terminal Type
String transactionMode = "transactionMode_example"; // String | Available transactionMode for Listing Terminal Type detail.
try {
    TerminalTypeList result = apiInstance.getTerminalType(userId, userType, dataRoleId, roleId, description, transactionMode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalTypeApi#getTerminalType");
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
 **description** | **String**| Available description for Listing Terminal Type | [optional]
 **transactionMode** | **String**| Available transactionMode for Listing Terminal Type detail. | [optional]

### Return type

[**TerminalTypeList**](TerminalTypeList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

