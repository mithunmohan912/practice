# ViewSummaryApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getViewSummary**](ViewSummaryApi.md#getViewSummary) | **GET** /viewSummary | Find viewSummary for CUSTOMER|MERCHANT|AGENT|TERMINAL


<a name="getViewSummary"></a>
# **getViewSummary**
> ViewSummaryResponse getViewSummary(userId, userType, dataRoleId, roleId, entityType, typeNumber, startMonth, startYear)

Find viewSummary for CUSTOMER|MERCHANT|AGENT|TERMINAL

Returns viewSummary detail

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ViewSummaryApi;


ViewSummaryApi apiInstance = new ViewSummaryApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String entityType = "entityType_example"; // String | Entity Type
String typeNumber = "typeNumber_example"; // String | It could be CUSTOMER|MERCHANT|AGENT|TERMINAL Number
String startMonth = 1; // String | Start Month.
String startYear = 2004; // String | Start Year.
try {
    ViewSummaryResponse result = apiInstance.getViewSummary(userId, userType, dataRoleId, roleId, entityType, typeNumber, startMonth, startYear);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ViewSummaryApi#getViewSummary");
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
 **entityType** | **String**| Entity Type |
 **typeNumber** | **String**| It could be CUSTOMER|MERCHANT|AGENT|TERMINAL Number |
 **startMonth** | **String**| Start Month. |
 **startYear** | **String**| Start Year. |

### Return type

[**ViewSummaryResponse**](ViewSummaryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

