
# Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **Integer** | Order serial |  [optional]
**orderReferenceId** | **Integer** | Order Reference |  [optional]
**orderReferenceMessage** | **String** | Success Message |  [optional]
**customerAccountCode** | **String** | Customer  Supplier Account Code | 
**customerAccountName** | **String** | Customer  Supplier Account Name |  [optional]
**isMerchantProcessFileExist** | **Boolean** |  |  [optional]
**isMerchantAgreementFileExist** | **Boolean** |  |  [optional]
**date** | **String** | Order Date | 
**terms** | **String** | Order Terms | 
**settlementDueDays** | **Integer** | Settlement Due Days | 
**settlementDiscount** | **Float** | Settlement Discount |  [optional]
**nominalCode** | **String** | Nominal Code |  [optional]
**taxCode** | **Integer** |  Order Tax Code |  [optional]
**deliveryContact** | [**Contact**](Contact.md) |  |  [optional]
**settleDiscountAmount** | **Float** | Settle Discount Amount |  [optional]
**settleTotalAmount** | **Float** | Settle Total Amount |  [optional]
**carriageNetAmount** | **Float** | Carriage Net Amount |  [optional]
**carriageTaxCode** | **Integer** | Carriage Tax Code |  [optional]
**carriageVatAmount** | **Float** | Carriage Vat Amount |  [optional]
**carriageGrossAmount** | **Float** | Carriage Gross Amount |  [optional]
**status** | **String** | Status: * Status value in Request should strictly anyOf - GENERATED, REGISTERED, BILLED, COMPLETE, ACCEPTED, PART_PROCESS, PROCESSING, CANCELLED.  | 
**billingForRole** | [**BillingForRoleEnum**](#BillingForRoleEnum) | Billing For Role | 
**period** | [**PeriodEnum**](#PeriodEnum) | Period |  [optional]
**renewDate** | **String** | Renew Date Format |  [optional]
**lastRenewDate** | **String** | Last Renew Date Format |  [optional]
**orderType** | [**OrderTypeEnum**](#OrderTypeEnum) | Order type |  [optional]
**batchSize** | **Integer** | Batch Size |  [optional]
**tiDRangeStart** | **String** | TID Range Start |  [optional]
**financialAssign** | **String** | Financial Assign |  [optional]
**newMerchantApplication** | **String** | new Merchant Application |  [optional]
**supportedTransactionType** | **String** | Supported Transaction Type |  [optional]
**currencyCode** | **String** | Currency Code |  [optional]
**countryCode** | **String** | Country Code |  [optional]
**currencyName** | **String** | Currency Name |  [optional]
**countryName** | **String** | Country Name |  [optional]
**captureModes** | **String** | Capture Modes |  [optional]
**expectedLiveDate** | **String** | Expected Live Date | 
**merchantNumber** | **String** | Merchant Number |  [optional]
**customerOrderRefNum** | **String** | Customer Order Reference Number |  [optional]
**categoryType** | [**CategoryTypeEnum**](#CategoryTypeEnum) | Category Type |  [optional]
**reason** | **String** | reason |  [optional]
**reissuanceAgainstSuspendedOrder** | **String** | reissuance Against Suspended Order |  [optional]
**suspendedOrderSerial** | **Integer** | Suspended Order Serial |  [optional]
**orderItems** | [**List&lt;OrderItem&gt;**](OrderItem.md) |  |  [optional]


<a name="BillingForRoleEnum"></a>
## Enum: BillingForRoleEnum
Name | Value
---- | -----
MERCHANT | &quot;MERCHANT&quot;
SRV_OPERATOR | &quot;SRV_OPERATOR&quot;


<a name="PeriodEnum"></a>
## Enum: PeriodEnum
Name | Value
---- | -----
NUMBER_0 | 0
NUMBER_12 | 12
NUMBER_18 | 18
NUMBER_24 | 24
NUMBER_36 | 36
NUMBER_48 | 48


<a name="OrderTypeEnum"></a>
## Enum: OrderTypeEnum
Name | Value
---- | -----
SINGLE | &quot;SINGLE&quot;
BATCH | &quot;BATCH&quot;


<a name="CategoryTypeEnum"></a>
## Enum: CategoryTypeEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
EPOS | &quot;EPOS&quot;
HOSPITALITY | &quot;Hospitality&quot;
INTERNET | &quot;Internet&quot;
KIOSK | &quot;Kiosk&quot;
PHYSICAL | &quot;Physical&quot;
STOREMANAGER | &quot;StoreManager&quot;



