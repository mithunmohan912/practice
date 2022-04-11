# AgentApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAgent**](AgentApi.md#addAgent) | **POST** /agents | Add an agent
[**getAgent**](AgentApi.md#getAgent) | **GET** /agent/{agentNumber} | Find Agent by Agent Number
[**getAgentExport**](AgentApi.md#getAgentExport) | **GET** /agentExport | Fetch Agents based on criteria specified
[**getAgents**](AgentApi.md#getAgents) | **GET** /agents | List Agents
[**updateAgent**](AgentApi.md#updateAgent) | **PUT** /agents | Update an agent


<a name="addAgent"></a>
# **addAgent**
> AgentResponse addAgent(userId, userType, dataRoleId, roleId, agent)

Add an agent

Adds an agent

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AgentApi;


AgentApi apiInstance = new AgentApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Agent agent = new Agent(); // Agent | Contains Agent information in request parameters
try {
    AgentResponse result = apiInstance.addAgent(userId, userType, dataRoleId, roleId, agent);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AgentApi#addAgent");
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
 **agent** | [**Agent**](Agent.md)| Contains Agent information in request parameters |

### Return type

[**AgentResponse**](AgentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=UTF-8
 - **Accept**: application/json; charset=UTF-8

<a name="getAgent"></a>
# **getAgent**
> Agents getAgent(userId, userType, dataRoleId, roleId, agentNumber)

Find Agent by Agent Number

Returns an Agent

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AgentApi;


AgentApi apiInstance = new AgentApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String agentNumber = "agentNumber_example"; // String | Agent Number for getting agent detail.
try {
    Agents result = apiInstance.getAgent(userId, userType, dataRoleId, roleId, agentNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AgentApi#getAgent");
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
 **agentNumber** | **String**| Agent Number for getting agent detail. |

### Return type

[**Agents**](Agents.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="getAgentExport"></a>
# **getAgentExport**
> File getAgentExport(userId, userType, dataRoleId, roleId, name, merchantNumber, mode, status, accountCode)

Fetch Agents based on criteria specified

Return CSV Export for list of agents fetched

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AgentApi;


AgentApi apiInstance = new AgentApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String name = "name_example"; // String | Name of Agent
String merchantNumber = "merchantNumber_example"; // String | Merchant Number
String mode = "mode_example"; // String | Available Modes
String status = "status_example"; // String | Available Status
String accountCode = "accountCode_example"; // String | Customer Supplier Account Code
try {
    File result = apiInstance.getAgentExport(userId, userType, dataRoleId, roleId, name, merchantNumber, mode, status, accountCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AgentApi#getAgentExport");
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
 **name** | **String**| Name of Agent | [optional]
 **merchantNumber** | **String**| Merchant Number | [optional]
 **mode** | **String**| Available Modes | [optional] [enum: EMBOSS_REG, EMB_REG_REQD, LIVE, REG_REQD, SUSPENDED, TEST]
 **status** | **String**| Available Status | [optional] [enum: ERROR, LIVE, NORMAL, TRAINING]
 **accountCode** | **String**| Customer Supplier Account Code | [optional]

### Return type

[**File**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

<a name="getAgents"></a>
# **getAgents**
> Agents getAgents(userId, userType, dataRoleId, roleId, name, merchantNumber, mode, status, accountCode)

List Agents

Returns list of agents

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AgentApi;


AgentApi apiInstance = new AgentApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String name = "name_example"; // String | Name of Agent
String merchantNumber = "merchantNumber_example"; // String | Merchant Number
String mode = "mode_example"; // String | Available Modes
String status = "status_example"; // String | Available Status
String accountCode = "accountCode_example"; // String | Customer Supplier Account Code
try {
    Agents result = apiInstance.getAgents(userId, userType, dataRoleId, roleId, name, merchantNumber, mode, status, accountCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AgentApi#getAgents");
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
 **name** | **String**| Name of Agent | [optional]
 **merchantNumber** | **String**| Merchant Number | [optional]
 **mode** | **String**| Available Modes | [optional] [enum: EMBOSS_REG, EMB_REG_REQD, LIVE, REG_REQD, SUSPENDED, TEST]
 **status** | **String**| Available Status | [optional] [enum: ERROR, LIVE, NORMAL, TRAINING]
 **accountCode** | **String**| Customer Supplier Account Code | [optional]

### Return type

[**Agents**](Agents.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="updateAgent"></a>
# **updateAgent**
> AgentResponse updateAgent(userId, userType, dataRoleId, roleId, agent)

Update an agent

Updates an agent

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.AgentApi;


AgentApi apiInstance = new AgentApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Agent agent = new Agent(); // Agent | Contains Agent information in request parameters
try {
    AgentResponse result = apiInstance.updateAgent(userId, userType, dataRoleId, roleId, agent);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AgentApi#updateAgent");
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
 **agent** | [**Agent**](Agent.md)| Contains Agent information in request parameters |

### Return type

[**AgentResponse**](AgentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

