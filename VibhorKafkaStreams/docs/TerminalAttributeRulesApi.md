# TerminalAttributeRulesApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTerminalAttributeRules**](TerminalAttributeRulesApi.md#getTerminalAttributeRules) | **GET** /terminalAttributeRules | List of Terminal Attribute Rules


<a name="getTerminalAttributeRules"></a>
# **getTerminalAttributeRules**
> TerminalAttributeRulesList getTerminalAttributeRules(userId, userType, dataRoleId, roleId, terminalTypeId, productPlanCode, agentNumber)

List of Terminal Attribute Rules

Terminal Attribute Rules

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.TerminalAttributeRulesApi;


TerminalAttributeRulesApi apiInstance = new TerminalAttributeRulesApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String terminalTypeId = "terminalTypeId_example"; // String | TerminalType Id
String productPlanCode = "productPlanCode_example"; // String | Product Plan Code
String agentNumber = "agentNumber_example"; // String | Agent Number
try {
    TerminalAttributeRulesList result = apiInstance.getTerminalAttributeRules(userId, userType, dataRoleId, roleId, terminalTypeId, productPlanCode, agentNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TerminalAttributeRulesApi#getTerminalAttributeRules");
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
 **terminalTypeId** | **String**| TerminalType Id |
 **productPlanCode** | **String**| Product Plan Code |
 **agentNumber** | **String**| Agent Number | [optional]

### Return type

[**TerminalAttributeRulesList**](TerminalAttributeRulesList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

