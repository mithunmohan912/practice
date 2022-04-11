# ActivitiesApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActivities**](ActivitiesApi.md#getActivities) | **GET** /activities | Find Activity


<a name="getActivities"></a>
# **getActivities**
> ActivitiesResponse getActivities(userId, userType, dataRoleId, roleId, activityCode, activityDescription)

Find Activity

Returns Activity

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ActivitiesApi;


ActivitiesApi apiInstance = new ActivitiesApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String activityCode = "activityCode_example"; // String | Activity Code
String activityDescription = "activityDescription_example"; // String | Activity Description
try {
    ActivitiesResponse result = apiInstance.getActivities(userId, userType, dataRoleId, roleId, activityCode, activityDescription);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ActivitiesApi#getActivities");
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
 **activityCode** | **String**| Activity Code | [optional]
 **activityDescription** | **String**| Activity Description | [optional]

### Return type

[**ActivitiesResponse**](ActivitiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

