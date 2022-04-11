# ReportformatsApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reportformats**](ReportformatsApi.md#reportformats) | **GET** /reportformats | Fetching Report Formats


<a name="reportformats"></a>
# **reportformats**
> ReportFormats reportformats(userId, userType, dataRoleId, roleId, customersupplieraccountcode)

Fetching Report Formats

Returns Report Formats

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ReportformatsApi;


ReportformatsApi apiInstance = new ReportformatsApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String customersupplieraccountcode = "customersupplieraccountcode_example"; // String | Customer Supplier AccountCode
try {
    ReportFormats result = apiInstance.reportformats(userId, userType, dataRoleId, roleId, customersupplieraccountcode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ReportformatsApi#reportformats");
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
 **customersupplieraccountcode** | **String**| Customer Supplier AccountCode | [optional]

### Return type

[**ReportFormats**](ReportFormats.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

