# TokenpoliciesApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTokenPolicy**](TokenpoliciesApi.md#addTokenPolicy) | **POST** /tokenpolicies | Add a new Token Policy to the portal
[**getTokenPolicies**](TokenpoliciesApi.md#getTokenPolicies) | **GET** /tokenpolicies | Fetching Token Policies


<a name="addTokenPolicy"></a>
# **addTokenPolicy**
> TokenPolicyResponse addTokenPolicy(userId, userType, dataRoleId, roleId, tokenPolicy)

Add a new Token Policy to the portal

Add a new Token Policy to the portal

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TokenpoliciesApi;


TokenpoliciesApi apiInstance = new TokenpoliciesApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
TokenPolicy tokenPolicy = new TokenPolicy(); // TokenPolicy | Adding a token policy to the portal
try {
    TokenPolicyResponse result = apiInstance.addTokenPolicy(userId, userType, dataRoleId, roleId, tokenPolicy);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TokenpoliciesApi#addTokenPolicy");
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
 **tokenPolicy** | [**TokenPolicy**](TokenPolicy.md)| Adding a token policy to the portal |

### Return type

[**TokenPolicyResponse**](TokenPolicyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getTokenPolicies"></a>
# **getTokenPolicies**
> TokenPolicyResponse getTokenPolicies(userId, userType, dataRoleId, roleId, tokenIdentifier, customerCode)

Fetching Token Policies

Returns Token Policies

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TokenpoliciesApi;


TokenpoliciesApi apiInstance = new TokenpoliciesApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer tokenIdentifier = 56; // Integer | Token Identifier to fetch Token Policies
String customerCode = "customerCode_example"; // String | customer code   to fetch Token Policies
try {
    TokenPolicyResponse result = apiInstance.getTokenPolicies(userId, userType, dataRoleId, roleId, tokenIdentifier, customerCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TokenpoliciesApi#getTokenPolicies");
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
 **tokenIdentifier** | **Integer**| Token Identifier to fetch Token Policies | [optional]
 **customerCode** | **String**| customer code   to fetch Token Policies | [optional]

### Return type

[**TokenPolicyResponse**](TokenPolicyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

