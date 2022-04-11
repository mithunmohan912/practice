# TerminalprofilesApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTerminalProfiles**](TerminalprofilesApi.md#getTerminalProfiles) | **GET** /terminalprofiles | Find Terminal Profiles


<a name="getTerminalProfiles"></a>
# **getTerminalProfiles**
> TerminalProfileArrayResponse getTerminalProfiles(userId, userType, dataRoleId, roleId, terminalProfileId, terminalProfileName)

Find Terminal Profiles

Returns Terminal Profiles

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalprofilesApi;


TerminalprofilesApi apiInstance = new TerminalprofilesApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer terminalProfileId = 56; // Integer | Terminal Profile Id.
String terminalProfileName = "terminalProfileName_example"; // String | Terminal Profile Name.
try {
    TerminalProfileArrayResponse result = apiInstance.getTerminalProfiles(userId, userType, dataRoleId, roleId, terminalProfileId, terminalProfileName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalprofilesApi#getTerminalProfiles");
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
 **terminalProfileId** | **Integer**| Terminal Profile Id. | [optional]
 **terminalProfileName** | **String**| Terminal Profile Name. | [optional]

### Return type

[**TerminalProfileArrayResponse**](TerminalProfileArrayResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

