# OrderApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addOrder**](OrderApi.md#addOrder) | **POST** /order | Add order in system
[**callImport**](OrderApi.md#callImport) | **POST** /orderConfirmation | Files upload on successful Order Confirmation
[**getOrder**](OrderApi.md#getOrder) | **GET** /order | List Orders
[**getOrderConfirmationDocument**](OrderApi.md#getOrderConfirmationDocument) | **GET** /orderConfirmationView | Return Order Document
[**productPlanPrice**](OrderApi.md#productPlanPrice) | **PUT** /productPlanPrice | Calculate price
[**updateOrder**](OrderApi.md#updateOrder) | **PUT** /order | Update order in system


<a name="addOrder"></a>
# **addOrder**
> OrderResponse addOrder(userId, userType, dataRoleId, roleId, order)

Add order in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.OrderApi;


OrderApi apiInstance = new OrderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Order order = new Order(); // Order | Contain Order information in request parameters
try {
    OrderResponse result = apiInstance.addOrder(userId, userType, dataRoleId, roleId, order);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#addOrder");
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
 **order** | [**Order**](Order.md)| Contain Order information in request parameters |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

<a name="callImport"></a>
# **callImport**
> BnaApiResponse callImport(userId, userType, dataRoleId, roleId, customerAccountCode, orderId, merchantProcessFile, merchantAgreementFile)

Files upload on successful Order Confirmation

import file

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.OrderApi;


OrderApi apiInstance = new OrderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String customerAccountCode = WPTXVZ007; // String | Customer Account Code
Integer orderId = 56; // Integer | Id of order for getting order detail.
File merchantProcessFile = new File("/path/to/file"); // File | 
File merchantAgreementFile = new File("/path/to/file"); // File | 
try {
    BnaApiResponse result = apiInstance.callImport(userId, userType, dataRoleId, roleId, customerAccountCode, orderId, merchantProcessFile, merchantAgreementFile);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#callImport");
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
 **customerAccountCode** | **String**| Customer Account Code |
 **orderId** | **Integer**| Id of order for getting order detail. |
 **merchantProcessFile** | **File**|  | [optional]
 **merchantAgreementFile** | **File**|  | [optional]

### Return type

[**BnaApiResponse**](BnaApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="getOrder"></a>
# **getOrder**
> OrderList getOrder(userId, userType, dataRoleId, roleId, id, customerAccountCode, terms, status, renewDate, orderType, financialAssign, customerOrderRefNum, categoryType, detailRequired)

List Orders

Returns Orders

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.OrderApi;


OrderApi apiInstance = new OrderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer id = 56; // Integer | Id of order for getting order detail.
String customerAccountCode = "customerAccountCode_example"; // String | Available customer Account Code for Listing Order
String terms = "terms_example"; // String | Avalilable Order Terms for Listing Order
String status = "status_example"; // String | Available Status for Listing Order
String renewDate = "renewDate_example"; // String | Order renewDate for Listing Order in format yyyyMM
String orderType = "orderType_example"; // String | Available Order Type for Listing Order
String financialAssign = "financialAssign_example"; // String | Available Financial Assign for Listing Order
String customerOrderRefNum = "customerOrderRefNum_example"; // String | Avalilable Customer Order Reference Number for Listing Order
String categoryType = "categoryType_example"; // String | Available Category type
Boolean detailRequired = true; // Boolean | Flag for detail order list
try {
    OrderList result = apiInstance.getOrder(userId, userType, dataRoleId, roleId, id, customerAccountCode, terms, status, renewDate, orderType, financialAssign, customerOrderRefNum, categoryType, detailRequired);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#getOrder");
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
 **id** | **Integer**| Id of order for getting order detail. | [optional]
 **customerAccountCode** | **String**| Available customer Account Code for Listing Order | [optional]
 **terms** | **String**| Avalilable Order Terms for Listing Order | [optional]
 **status** | **String**| Available Status for Listing Order | [optional]
 **renewDate** | **String**| Order renewDate for Listing Order in format yyyyMM | [optional]
 **orderType** | **String**| Available Order Type for Listing Order | [optional]
 **financialAssign** | **String**| Available Financial Assign for Listing Order | [optional]
 **customerOrderRefNum** | **String**| Avalilable Customer Order Reference Number for Listing Order | [optional]
 **categoryType** | **String**| Available Category type | [optional]
 **detailRequired** | **Boolean**| Flag for detail order list | [optional]

### Return type

[**OrderList**](OrderList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=UTF-8

<a name="getOrderConfirmationDocument"></a>
# **getOrderConfirmationDocument**
> OrderConfirmationViewResponse getOrderConfirmationDocument(userId, userType, dataRoleId, roleId, customerAccountCode, orderId, fileType)

Return Order Document

Returns Orders

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.OrderApi;


OrderApi apiInstance = new OrderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String customerAccountCode = WPTXVZ007; // String | Customer Account Code
Integer orderId = 56; // Integer | Id of order for getting order detail.
String fileType = "fileType_example"; // String | Mode of Terminal
try {
    OrderConfirmationViewResponse result = apiInstance.getOrderConfirmationDocument(userId, userType, dataRoleId, roleId, customerAccountCode, orderId, fileType);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#getOrderConfirmationDocument");
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
 **customerAccountCode** | **String**| Customer Account Code |
 **orderId** | **Integer**| Id of order for getting order detail. |
 **fileType** | **String**| Mode of Terminal | [optional] [enum: MERCHANT_PROCESS_FILE, MERCHANT_AGREEMENT_FILE]

### Return type

[**OrderConfirmationViewResponse**](OrderConfirmationViewResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="productPlanPrice"></a>
# **productPlanPrice**
> ProductPlanPriceResponse productPlanPrice(userId, userType, dataRoleId, roleId, productPlanPrice)

Calculate price

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.OrderApi;


OrderApi apiInstance = new OrderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
ProductPlanPrice productPlanPrice = new ProductPlanPrice(); // ProductPlanPrice | Updated price calculate on the basis of product sale price.
try {
    ProductPlanPriceResponse result = apiInstance.productPlanPrice(userId, userType, dataRoleId, roleId, productPlanPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#productPlanPrice");
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
 **productPlanPrice** | [**ProductPlanPrice**](ProductPlanPrice.md)| Updated price calculate on the basis of product sale price. |

### Return type

[**ProductPlanPriceResponse**](ProductPlanPriceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateOrder"></a>
# **updateOrder**
> OrderResponse updateOrder(userId, userType, dataRoleId, roleId, order)

Update order in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.OrderApi;


OrderApi apiInstance = new OrderApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Order order = new Order(); // Order | Contain Order information to update in request parameters
try {
    OrderResponse result = apiInstance.updateOrder(userId, userType, dataRoleId, roleId, order);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderApi#updateOrder");
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
 **order** | [**Order**](Order.md)| Contain Order information to update in request parameters |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=UTF-8

