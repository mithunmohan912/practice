# RegionApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRegionDetails**](RegionApi.md#getRegionDetails) | **GET** /region | Find regions by using country code


<a name="getRegionDetails"></a>
# **getRegionDetails**
> RegionListResponse getRegionDetails(userId, userType, dataRoleId, roleId, countryCode, regionId, regionNumber)

Find regions by using country code

Returns region detail

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.RegionApi;


RegionApi apiInstance = new RegionApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String countryCode = "countryCode_example"; // String | ISO country Code.
Integer regionId = 0; // Integer | Region Id.
String regionNumber = "regionNumber_example"; // String | Region Number.
try {
    RegionListResponse result = apiInstance.getRegionDetails(userId, userType, dataRoleId, roleId, countryCode, regionId, regionNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RegionApi#getRegionDetails");
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
 **countryCode** | **String**| ISO country Code. | [optional]
 **regionId** | **Integer**| Region Id. | [optional] [default to 0]
 **regionNumber** | **String**| Region Number. | [optional]

### Return type

[**RegionListResponse**](RegionListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

