
# CustomerSupplierAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountCode** | **String** | Customer Supplier Account Code | 
**type** | **String** | Type |  [optional]
**accountId** | **Integer** | Customer Supplier Account Account Id |  [optional]
**orderId** | **Integer** | Order Id |  [optional]
**name** | **String** | Name | 
**nameAbbreviation** | **String** | Name Abbreviation | 
**bankAccountName** | **String** | Bank Account Name |  [optional]
**contact** | [**Contact**](Contact.md) |  | 
**webUrl** | **String** | WEB URL |  [optional]
**currencyCode** | **String** | Currency Code |  [optional]
**currencyName** | **String** | Currency Name |  [optional]
**bankAccountId** | **Integer** | Bank Account Id |  [optional]
**mode** | [**ModeEnum**](#ModeEnum) | Mode |  [optional]
**department** | **Integer** | Department |  [optional]
**vat** | **String** | Vat Number |  [optional]
**creditLimit** | **Float** | Credit Limit |  [optional]
**terms** | **String** | Terms |  [optional]
**settleDueDays** | **Integer** | Settlement Due Days |  [optional]
**settlementDiscountRate** | **Float** | Settlement Discount Rate |  [optional]
**nominalCode** | **String** | Nominal Code |  [optional]
**taxCode** | [**TaxCodeEnum**](#TaxCodeEnum) | Tax Code |  [optional]
**balance** | **Double** | Balance |  [optional]
**deliveryContact** | [**Contact**](Contact.md) |  |  [optional]
**paymentDueDays** | **Integer** | Payment Due Days |  [optional]
**creditReference** | **String** | Credit Reference |  [optional]
**bacsReference** | **String** | Bacs Reference |  [optional]
**onlinePayment** | **String** | Online Payment |  [optional]
**memo** | **String** | Memo |  [optional]
**commisionPercent** | **Float** | Commision Percent |  [optional]
**commisionAmtAppl** | **String** | Commision Amt Appl |  [optional]
**invoiceGenerationDay** | **Integer** | Invoice Generation Day |  [optional]
**accountManager** | **String** | Account Manager |  [optional]
**vaTApplicable** | [**VaTApplicableEnum**](#VaTApplicableEnum) | VAT Applicable |  [optional]
**customerSupplierType** | **String** | Customer Supplier Type |  [optional]
**overrideProductTaxCode** | [**OverrideProductTaxCodeEnum**](#OverrideProductTaxCodeEnum) | Override Product Tax Code |  [optional]
**registrationNumber** | **String** | Registration Number |  [optional]
**incorporationDate** | **String** | Incorporation Date |  [optional]
**invoiceGenerationFlag** | [**InvoiceGenerationFlagEnum**](#InvoiceGenerationFlagEnum) | Invoice Generation Flag |  [optional]
**referredByCustomerSupplierCode** | **String** | Referred By Customer SupplierCode |  [optional]
**acquirerOrPartner** | **String** | Acquirer Or Partner |  [optional]
**discountRate** | **Float** | Discount Rate |  [optional]
**referredByCustomerSupplierName** | **String** | Referred By Customer SupplierName |  [optional]
**commissionNominalCode** | **String** | Commission Nominal Code |  [optional]
**partnerCommission** | **String** | Partner Commission |  [optional]
**tradingName** | **String** | Trading Name |  [optional]
**address** | [**Address**](Address.md) |  | 
**baseAddress** | [**Address**](Address.md) |  |  [optional]
**proprietorshipType** | **String** | Proprietor Ship Type |  [optional]
**otherProprietorship** | **String** | Other Proprietor Ship |  [optional]
**numOfPartners** | **Integer** | Number Of Partners |  [optional]
**numOfDirectors** | **Integer** | Number Of Directors |  [optional]
**team** | [**TeamEnum**](#TeamEnum) | Customer Supplier Account Team |  [optional]
**fieldSalesExecutive** | **String** | Field Sales Executive |  [optional]
**summaryInvoice** | **String** | Summary Invoice |  [optional]
**tiDFlag** | **String** | TID Flag |  [optional]
**tiDSequenceName** | **String** | TID Sequence Name |  [optional]
**p2peEnrolled** | **Boolean** | P2PE Enrollment |  [optional]
**isExported** | **String** | This flag will decide whether customer has already exported to Oracle or not |  [optional]
**financialPartnerCode** | **String** | Partner code used for Financial Purpose |  [optional]
**vtUpId** | **String** | Field for storing UPID for VT-onboarding |  [optional]


<a name="ModeEnum"></a>
## Enum: ModeEnum
Name | Value
---- | -----
LIVE | &quot;LIVE&quot;
ONLINE_REG | &quot;ONLINE_REG&quot;
REG_REQD | &quot;REG_REQD&quot;
SUSPENDED | &quot;SUSPENDED&quot;


<a name="TaxCodeEnum"></a>
## Enum: TaxCodeEnum
Name | Value
---- | -----
T0 | &quot;T0&quot;
T1 | &quot;T1&quot;
T2 | &quot;T2&quot;
T3 | &quot;T3&quot;
T4 | &quot;T4&quot;
T5 | &quot;T5&quot;


<a name="VaTApplicableEnum"></a>
## Enum: VaTApplicableEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
NO | &quot;NO&quot;
YES | &quot;YES&quot;


<a name="OverrideProductTaxCodeEnum"></a>
## Enum: OverrideProductTaxCodeEnum
Name | Value
---- | -----
NO | &quot;NO&quot;
YES | &quot;YES&quot;


<a name="InvoiceGenerationFlagEnum"></a>
## Enum: InvoiceGenerationFlagEnum
Name | Value
---- | -----
NO | &quot;NO&quot;
YES | &quot;YES&quot;


<a name="TeamEnum"></a>
## Enum: TeamEnum
Name | Value
---- | -----
INTERNTNL | &quot;INTERNTNL&quot;
NORTH_EAST | &quot;NORTH-EAST&quot;
NORTH_WEST | &quot;NORTH-WEST&quot;
OEM | &quot;OEM&quot;
SOUTH_EAST | &quot;SOUTH-EAST&quot;
SOUTH_WEST | &quot;SOUTH-WEST&quot;



