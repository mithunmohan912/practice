# AgentEnforcedLimitApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAgentEnforcedLimits**](AgentEnforcedLimitApi.md#getAgentEnforcedLimits) | **GET** /agentEnforcedLimit | Fetching Agent Enforced Limit
[**updateAgentEnforcedLimits**](AgentEnforcedLimitApi.md#updateAgentEnforcedLimits) | **PUT** /agentEnforcedLimit | Update Enforced Limits for an agent associated with Merchant


<a name="getAgentEnforcedLimits"></a>
# **getAgentEnforcedLimits**
> EnforcedLimitDetails getAgentEnforcedLimits(userId, userType, dataRoleId, roleId, agentNumber)

Fetching Agent Enforced Limit

Returns Agent Enforced Limit

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AgentEnforcedLimitApi;


AgentEnforcedLimitApi apiInstance = new AgentEnforcedLimitApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String agentNumber = "agentNumber_example"; // String | Agent Number
try {
    EnforcedLimitDetails result = apiInstance.getAgentEnforcedLimits(userId, userType, dataRoleId, roleId, agentNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AgentEnforcedLimitApi#getAgentEnforcedLimits");
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
 **agentNumber** | **String**| Agent Number |

### Return type

[**EnforcedLimitDetails**](EnforcedLimitDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="updateAgentEnforcedLimits"></a>
# **updateAgentEnforcedLimits**
> EnforcedLimitDetails updateAgentEnforcedLimits(userId, userType, dataRoleId, roleId, userName, agentNumber, enforcedLimitDetails)

Update Enforced Limits for an agent associated with Merchant

Modify Enforced Limits

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AgentEnforcedLimitApi;


AgentEnforcedLimitApi apiInstance = new AgentEnforcedLimitApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String userName = "userName_example"; // String | User name for audit
String agentNumber = "agentNumber_example"; // String | Agent Number
List<EnforcedLimitDetails> enforcedLimitDetails = Arrays.asList(null); // List<EnforcedLimitDetails> | Enforced Limit information
try {
    EnforcedLimitDetails result = apiInstance.updateAgentEnforcedLimits(userId, userType, dataRoleId, roleId, userName, agentNumber, enforcedLimitDetails);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AgentEnforcedLimitApi#updateAgentEnforcedLimits");
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
 **userName** | **String**| User name for audit |
 **agentNumber** | **String**| Agent Number |
 **enforcedLimitDetails** | [**List&lt;EnforcedLimitDetails&gt;**](List.md)| Enforced Limit information |

### Return type

[**EnforcedLimitDetails**](EnforcedLimitDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

