# PinPadApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPinPad**](PinPadApi.md#getPinPad) | **GET** /pinPad | List  of PinPads


<a name="getPinPad"></a>
# **getPinPad**
> PinPadList getPinPad(userId, userType, dataRoleId, roleId, providerName, modelName, applicationType, productType)

List  of PinPads

Returns List of PinPad

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.PinPadApi;


PinPadApi apiInstance = new PinPadApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String providerName = "providerName_example"; // String | Provider Name for getting PinPad detail.
String modelName = "modelName_example"; // String | Model Name of Pinpad for getting PinPad detail..
String applicationType = "applicationType_example"; // String | Available Application Type for getting PinPad detail.
String productType = "productType_example"; // String | Available Product Type for getting PinPad detail.
try {
    PinPadList result = apiInstance.getPinPad(userId, userType, dataRoleId, roleId, providerName, modelName, applicationType, productType);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PinPadApi#getPinPad");
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
 **providerName** | **String**| Provider Name for getting PinPad detail. | [optional]
 **modelName** | **String**| Model Name of Pinpad for getting PinPad detail.. | [optional]
 **applicationType** | **String**| Available Application Type for getting PinPad detail. | [optional]
 **productType** | **String**| Available Product Type for getting PinPad detail. | [optional]

### Return type

[**PinPadList**](PinPadList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

