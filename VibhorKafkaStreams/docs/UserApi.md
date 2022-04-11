# UserApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUser**](UserApi.md#addUser) | **POST** /user | Add User in system
[**getUserAccounts**](UserApi.md#getUserAccounts) | **GET** /user | Find User Accounts
[**updateUser**](UserApi.md#updateUser) | **PUT** /user | Update User in system


<a name="addUser"></a>
# **addUser**
> BnaApiResponse addUser(userId, userType, dataRoleId, roleId, userRegistration, isSyncReqd)

Add User in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.UserApi;


UserApi apiInstance = new UserApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
UserRegistration userRegistration = new UserRegistration(); // UserRegistration | Contain User information in request
String isSyncReqd = "\"N\""; // String | 
try {
    BnaApiResponse result = apiInstance.addUser(userId, userType, dataRoleId, roleId, userRegistration, isSyncReqd);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UserApi#addUser");
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
 **userRegistration** | [**UserRegistration**](UserRegistration.md)| Contain User information in request |
 **isSyncReqd** | **String**|  | [optional] [default to &quot;N&quot;]

### Return type

[**BnaApiResponse**](BnaApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUserAccounts"></a>
# **getUserAccounts**
> UserResponse getUserAccounts(userId, userType, dataRoleId, roleId, pUserId, typeNumber, pUserType)

Find User Accounts

Returns user accounts

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.UserApi;


UserApi apiInstance = new UserApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String pUserId = "pUserId_example"; // String | 
String typeNumber = "typeNumber_example"; // String | 
String pUserType = "pUserType_example"; // String | 
try {
    UserResponse result = apiInstance.getUserAccounts(userId, userType, dataRoleId, roleId, pUserId, typeNumber, pUserType);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UserApi#getUserAccounts");
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
 **pUserId** | **String**|  | [optional]
 **typeNumber** | **String**|  | [optional]
 **pUserType** | **String**|  | [optional]

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="updateUser"></a>
# **updateUser**
> UserAccountResponse updateUser(userId, userType, dataRoleId, roleId, user)

Update User in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.UserApi;


UserApi apiInstance = new UserApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
User user = new User(); // User | Contain User information in request
try {
    UserAccountResponse result = apiInstance.updateUser(userId, userType, dataRoleId, roleId, user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UserApi#updateUser");
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
 **user** | [**User**](User.md)| Contain User information in request |

### Return type

[**UserAccountResponse**](UserAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

