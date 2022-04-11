# ProductApi

All URIs are relative to *http://wph.worldpay.local/v1/onboarding*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProduct**](ProductApi.md#addProduct) | **POST** /products | Add product in system
[**addProductPlan**](ProductApi.md#addProductPlan) | **POST** /productPlans | Add Product Plan in system
[**addProductSalePriceGroup**](ProductApi.md#addProductSalePriceGroup) | **POST** /productSalePriceGroup | Add Product sale price group in system
[**addProductSalePriceSlabs**](ProductApi.md#addProductSalePriceSlabs) | **POST** /productSalePriceSlabs | Add Product Sale Price Slabs in system
[**getDetailProducts**](ProductApi.md#getDetailProducts) | **GET** /productPlanDetail | Get Product Details
[**getProduct**](ProductApi.md#getProduct) | **GET** /products | Get Products
[**getProductItemNumber**](ProductApi.md#getProductItemNumber) | **GET** /productItemNumber | Get Product Item Number
[**getProductPlan**](ProductApi.md#getProductPlan) | **GET** /productPlans | Get ProductPlans
[**getProductSalePriceGroup**](ProductApi.md#getProductSalePriceGroup) | **GET** /productSalePriceGroup | Get Product Sale Price Group
[**getProductSalePriceSlabs**](ProductApi.md#getProductSalePriceSlabs) | **GET** /productSalePriceSlabs | Get Product Sale Price Slabs
[**getProductType**](ProductApi.md#getProductType) | **GET** /productType | Get ProductType
[**updateProduct**](ProductApi.md#updateProduct) | **PUT** /products | Update product in system
[**updateProductPlan**](ProductApi.md#updateProductPlan) | **PUT** /productPlans | Update Product Plan in system
[**updateProductSalePriceGroup**](ProductApi.md#updateProductSalePriceGroup) | **PUT** /productSalePriceGroup | Update Product sale price group in system
[**updateProductSalePriceSlabs**](ProductApi.md#updateProductSalePriceSlabs) | **PUT** /productSalePriceSlabs | Update Product sale price slabs in system


<a name="addProduct"></a>
# **addProduct**
> ProductResponse addProduct(userId, userType, dataRoleId, roleId, product)

Add product in system

Add product in system

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Product product = new Product(); // Product | Contain product information in request parameters
try {
    ProductResponse result = apiInstance.addProduct(userId, userType, dataRoleId, roleId, product);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#addProduct");
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
 **product** | [**Product**](Product.md)| Contain product information in request parameters | [optional]

### Return type

[**ProductResponse**](ProductResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="addProductPlan"></a>
# **addProductPlan**
> ProductPlanResponse addProductPlan(userId, userType, dataRoleId, roleId, productPlan)

Add Product Plan in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
ProductPlan productPlan = new ProductPlan(); // ProductPlan | Contain Product Plan information in request parameters
try {
    ProductPlanResponse result = apiInstance.addProductPlan(userId, userType, dataRoleId, roleId, productPlan);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#addProductPlan");
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
 **productPlan** | [**ProductPlan**](ProductPlan.md)| Contain Product Plan information in request parameters |

### Return type

[**ProductPlanResponse**](ProductPlanResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="addProductSalePriceGroup"></a>
# **addProductSalePriceGroup**
> ProductSalePriceGroupResponse addProductSalePriceGroup(userId, userType, dataRoleId, roleId, productSalePriceGroup)

Add Product sale price group in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
ProductSalePriceGroup productSalePriceGroup = new ProductSalePriceGroup(); // ProductSalePriceGroup | Contain ProductSalePriceGroup information in request
try {
    ProductSalePriceGroupResponse result = apiInstance.addProductSalePriceGroup(userId, userType, dataRoleId, roleId, productSalePriceGroup);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#addProductSalePriceGroup");
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
 **productSalePriceGroup** | [**ProductSalePriceGroup**](ProductSalePriceGroup.md)| Contain ProductSalePriceGroup information in request |

### Return type

[**ProductSalePriceGroupResponse**](ProductSalePriceGroupResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="addProductSalePriceSlabs"></a>
# **addProductSalePriceSlabs**
> ProductSalePriceSlabsResponse addProductSalePriceSlabs(userId, userType, dataRoleId, roleId, productSalePriceSlabs)

Add Product Sale Price Slabs in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
ProductSalePriceSlabs productSalePriceSlabs = new ProductSalePriceSlabs(); // ProductSalePriceSlabs | Contain Product Sale Price Slabs information in request
try {
    ProductSalePriceSlabsResponse result = apiInstance.addProductSalePriceSlabs(userId, userType, dataRoleId, roleId, productSalePriceSlabs);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#addProductSalePriceSlabs");
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
 **productSalePriceSlabs** | [**ProductSalePriceSlabs**](ProductSalePriceSlabs.md)| Contain Product Sale Price Slabs information in request |

### Return type

[**ProductSalePriceSlabsResponse**](ProductSalePriceSlabsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDetailProducts"></a>
# **getDetailProducts**
> ProductPlanDetailResponse getDetailProducts(userId, userType, dataRoleId, roleId, productPlanCode, transactionCountPerMonth, quantity, csAccountCode, description, status, orderType, billingForRole, agentNumber, lastAcceptedDate, lastBillDate, lastCompleteDate, lastGeneratedDate, terminalTypeId, isRefund, acquirerMid, acquirerMidPrefix)

Get Product Details

Returns Details of Products

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String productPlanCode = "productPlanCode_example"; // String | productPlanCode.
String transactionCountPerMonth = "transactionCountPerMonth_example"; // String | txnCount
Integer quantity = 56; // Integer | quantity
String csAccountCode = "csAccountCode_example"; // String | csAccountCode
String description = "description_example"; // String | Description
String status = "status_example"; // String | Product Status
String orderType = "orderType_example"; // String | OrderType
String billingForRole = "billingForRole_example"; // String | BillingForRole
String agentNumber = "agentNumber_example"; // String | AgentNumber
String lastAcceptedDate = "lastAcceptedDate_example"; // String | jspLastAcceptedDate
String lastBillDate = "lastBillDate_example"; // String | jspLastBilledDate
String lastCompleteDate = "lastCompleteDate_example"; // String | jspLastCompleteDate
String lastGeneratedDate = "lastGeneratedDate_example"; // String | jspLastGeneratedDate
Integer terminalTypeId = 56; // Integer | terminalTypeId
Boolean isRefund = true; // Boolean | isRefundFlag
String acquirerMid = "acquirerMid_example"; // String | acquirerMid
String acquirerMidPrefix = "acquirerMidPrefix_example"; // String | acquirerMidPrefix
try {
    ProductPlanDetailResponse result = apiInstance.getDetailProducts(userId, userType, dataRoleId, roleId, productPlanCode, transactionCountPerMonth, quantity, csAccountCode, description, status, orderType, billingForRole, agentNumber, lastAcceptedDate, lastBillDate, lastCompleteDate, lastGeneratedDate, terminalTypeId, isRefund, acquirerMid, acquirerMidPrefix);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#getDetailProducts");
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
 **productPlanCode** | **String**| productPlanCode. |
 **transactionCountPerMonth** | **String**| txnCount |
 **quantity** | **Integer**| quantity |
 **csAccountCode** | **String**| csAccountCode |
 **description** | **String**| Description |
 **status** | **String**| Product Status | [optional]
 **orderType** | **String**| OrderType | [optional]
 **billingForRole** | **String**| BillingForRole | [optional]
 **agentNumber** | **String**| AgentNumber | [optional]
 **lastAcceptedDate** | **String**| jspLastAcceptedDate | [optional]
 **lastBillDate** | **String**| jspLastBilledDate | [optional]
 **lastCompleteDate** | **String**| jspLastCompleteDate | [optional]
 **lastGeneratedDate** | **String**| jspLastGeneratedDate | [optional]
 **terminalTypeId** | **Integer**| terminalTypeId | [optional]
 **isRefund** | **Boolean**| isRefundFlag | [optional]
 **acquirerMid** | **String**| acquirerMid | [optional]
 **acquirerMidPrefix** | **String**| acquirerMidPrefix | [optional]

### Return type

[**ProductPlanDetailResponse**](ProductPlanDetailResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProduct"></a>
# **getProduct**
> ProductList getProduct(userId, userType, dataRoleId, roleId, id, productcode, name, productTypeCode, feeTypeCode, partNumber, location, supplierCode, status, stockStatus, productPlanCode)

Get Products

Returns Array of Products

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer id = 56; // Integer | Product ID
String productcode = "productcode_example"; // String | Product Code
String name = "name_example"; // String | Product Name
String productTypeCode = "productTypeCode_example"; // String | Product Type Code
String feeTypeCode = "feeTypeCode_example"; // String | Product Fee Type Code
String partNumber = "partNumber_example"; // String | Product PartNumber
String location = "location_example"; // String | Product Location
String supplierCode = "supplierCode_example"; // String | SupplierCode
String status = "status_example"; // String | Product Status
String stockStatus = "stockStatus_example"; // String | Stock Status
String productPlanCode = "productPlanCode_example"; // String | Product Plan Code
try {
    ProductList result = apiInstance.getProduct(userId, userType, dataRoleId, roleId, id, productcode, name, productTypeCode, feeTypeCode, partNumber, location, supplierCode, status, stockStatus, productPlanCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#getProduct");
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
 **id** | **Integer**| Product ID | [optional]
 **productcode** | **String**| Product Code | [optional]
 **name** | **String**| Product Name | [optional]
 **productTypeCode** | **String**| Product Type Code | [optional]
 **feeTypeCode** | **String**| Product Fee Type Code | [optional]
 **partNumber** | **String**| Product PartNumber | [optional]
 **location** | **String**| Product Location | [optional]
 **supplierCode** | **String**| SupplierCode | [optional]
 **status** | **String**| Product Status | [optional]
 **stockStatus** | **String**| Stock Status | [optional]
 **productPlanCode** | **String**| Product Plan Code | [optional]

### Return type

[**ProductList**](ProductList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProductItemNumber"></a>
# **getProductItemNumber**
> ProductItemNumbers getProductItemNumber(userId, userType, dataRoleId, roleId)

Get Product Item Number

Returns List of Product Item Number

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
try {
    ProductItemNumbers result = apiInstance.getProductItemNumber(userId, userType, dataRoleId, roleId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#getProductItemNumber");
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

### Return type

[**ProductItemNumbers**](ProductItemNumbers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProductPlan"></a>
# **getProductPlan**
> ProductPlanList getProductPlan(userId, userType, dataRoleId, roleId, id, code, name, status)

Get ProductPlans

Returns ProductPlans

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer id = 56; // Integer | Product Plan ID
String code = "code_example"; // String | Product Plan Code
String name = WP Total Std Nov13; // String | Product Plan Name
String status = "status_example"; // String | Product Plan Status
try {
    ProductPlanList result = apiInstance.getProductPlan(userId, userType, dataRoleId, roleId, id, code, name, status);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#getProductPlan");
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
 **id** | **Integer**| Product Plan ID | [optional]
 **code** | **String**| Product Plan Code | [optional]
 **name** | **String**| Product Plan Name | [optional]
 **status** | **String**| Product Plan Status | [optional]

### Return type

[**ProductPlanList**](ProductPlanList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProductSalePriceGroup"></a>
# **getProductSalePriceGroup**
> ProductSalePriceGroupList getProductSalePriceGroup(userId, userType, dataRoleId, roleId, productSalePriceGroupId, groupName, productCode, entityType)

Get Product Sale Price Group

Returns Array of ProductSalePriceGroup

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer productSalePriceGroupId = 56; // Integer | Product Sale Price Group Number
String groupName = "groupName_example"; // String | Product Group Number
String productCode = "productCode_example"; // String | Product Code
String entityType = "entityType_example"; // String | Entity Type
try {
    ProductSalePriceGroupList result = apiInstance.getProductSalePriceGroup(userId, userType, dataRoleId, roleId, productSalePriceGroupId, groupName, productCode, entityType);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#getProductSalePriceGroup");
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
 **productSalePriceGroupId** | **Integer**| Product Sale Price Group Number | [optional]
 **groupName** | **String**| Product Group Number | [optional]
 **productCode** | **String**| Product Code | [optional]
 **entityType** | **String**| Entity Type | [optional]

### Return type

[**ProductSalePriceGroupList**](ProductSalePriceGroupList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProductSalePriceSlabs"></a>
# **getProductSalePriceSlabs**
> ProductSalePriceSlabList getProductSalePriceSlabs(userId, userType, dataRoleId, roleId, productSalePriceSlabsId, priceGroupNumber, itemNumber)

Get Product Sale Price Slabs

Returns Array of ProductSalePriceSlabs

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Integer productSalePriceSlabsId = 56; // Integer | Product Sale Price Slabs ID
Integer priceGroupNumber = 56; // Integer | Product Group Number
Integer itemNumber = 56; // Integer | Product Name
try {
    ProductSalePriceSlabList result = apiInstance.getProductSalePriceSlabs(userId, userType, dataRoleId, roleId, productSalePriceSlabsId, priceGroupNumber, itemNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#getProductSalePriceSlabs");
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
 **productSalePriceSlabsId** | **Integer**| Product Sale Price Slabs ID | [optional]
 **priceGroupNumber** | **Integer**| Product Group Number | [optional]
 **itemNumber** | **Integer**| Product Name | [optional]

### Return type

[**ProductSalePriceSlabList**](ProductSalePriceSlabList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProductType"></a>
# **getProductType**
> ProductTypeList getProductType(userId, userType, dataRoleId, roleId, name, productCode)

Get ProductType

Returns ProductType

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
String name = REGISTER TERM; // String | Product Type Name
String productCode = REGISTER TERM; // String | Product Code
try {
    ProductTypeList result = apiInstance.getProductType(userId, userType, dataRoleId, roleId, name, productCode);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#getProductType");
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
 **name** | **String**| Product Type Name | [optional]
 **productCode** | **String**| Product Code | [optional]

### Return type

[**ProductTypeList**](ProductTypeList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateProduct"></a>
# **updateProduct**
> ProductResponse updateProduct(userId, userType, dataRoleId, roleId, product)

Update product in system

Update product in system

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
Product product = new Product(); // Product | Contain product information in request parameters
try {
    ProductResponse result = apiInstance.updateProduct(userId, userType, dataRoleId, roleId, product);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#updateProduct");
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
 **product** | [**Product**](Product.md)| Contain product information in request parameters | [optional]

### Return type

[**ProductResponse**](ProductResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateProductPlan"></a>
# **updateProductPlan**
> ProductPlanResponse updateProductPlan(userId, userType, dataRoleId, roleId, productPlan)

Update Product Plan in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
ProductPlan productPlan = new ProductPlan(); // ProductPlan | Contain Product Plan information to update in request parameters
try {
    ProductPlanResponse result = apiInstance.updateProductPlan(userId, userType, dataRoleId, roleId, productPlan);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#updateProductPlan");
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
 **productPlan** | [**ProductPlan**](ProductPlan.md)| Contain Product Plan information to update in request parameters |

### Return type

[**ProductPlanResponse**](ProductPlanResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateProductSalePriceGroup"></a>
# **updateProductSalePriceGroup**
> ProductSalePriceGroupResponse updateProductSalePriceGroup(userId, userType, dataRoleId, roleId, productSalePriceGroup)

Update Product sale price group in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
ProductSalePriceGroup productSalePriceGroup = new ProductSalePriceGroup(); // ProductSalePriceGroup | Update Product sale price group in system
try {
    ProductSalePriceGroupResponse result = apiInstance.updateProductSalePriceGroup(userId, userType, dataRoleId, roleId, productSalePriceGroup);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#updateProductSalePriceGroup");
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
 **productSalePriceGroup** | [**ProductSalePriceGroup**](ProductSalePriceGroup.md)| Update Product sale price group in system |

### Return type

[**ProductSalePriceGroupResponse**](ProductSalePriceGroupResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateProductSalePriceSlabs"></a>
# **updateProductSalePriceSlabs**
> ProductSalePriceSlabsResponse updateProductSalePriceSlabs(userId, userType, dataRoleId, roleId, productSalePriceSlabs)

Update Product sale price slabs in system

Returns status

### Example
```java
// Import classes:
//import com.worldpay.bna.onboarding.services.invoker.ApiException;
//import com.worldpay.bna.onboarding.services.ProductApi;


ProductApi apiInstance = new ProductApi();
String userId = foobar; // String | User Id
String userType = admin; // String | Type of User
String dataRoleId = SO; // String | Data role Id
Integer roleId = 3; // Integer | Role Id of User
ProductSalePriceSlabs productSalePriceSlabs = new ProductSalePriceSlabs(); // ProductSalePriceSlabs | Update Product sale price slabs in system
try {
    ProductSalePriceSlabsResponse result = apiInstance.updateProductSalePriceSlabs(userId, userType, dataRoleId, roleId, productSalePriceSlabs);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductApi#updateProductSalePriceSlabs");
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
 **productSalePriceSlabs** | [**ProductSalePriceSlabs**](ProductSalePriceSlabs.md)| Update Product sale price slabs in system |

### Return type

[**ProductSalePriceSlabsResponse**](ProductSalePriceSlabsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

