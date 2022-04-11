
# ServiceProviderEpos

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique Identifier |  [optional]
**serviceProviderCode** | **String** | Service Provider Code |  [optional]
**posType** | [**PosTypeEnum**](#PosTypeEnum) | POS Type |  [optional]
**testDate** | **String** | Test Date | 
**eposApplicationDetails** | **String** | EPOS Application Details | 
**contact** | [**Contact**](Contact.md) |  | 
**interfaceType** | [**InterfaceTypeEnum**](#InterfaceTypeEnum) | Interface Type |  [optional]
**receiptSource** | [**ReceiptSourceEnum**](#ReceiptSourceEnum) | Receipt Source |  [optional]
**receiptInterface** | [**ReceiptInterfaceEnum**](#ReceiptInterfaceEnum) | Receipt Interface |  [optional]
**transType** | **String** | Supported Transaction Type |  [optional]
**hospitalitySupport** | [**HospitalitySupportEnum**](#HospitalitySupportEnum) | Hospitality Support |  [optional]
**giftCardSupport** | [**GiftCardSupportEnum**](#GiftCardSupportEnum) | Gift Card Support |  [optional]
**operatingSystem** | **String** | Operating System |  [optional]
**programmingLanguage** | **String** | Programming Language |  [optional]
**evtVersionTested** | **String** | EVT Version Tested |  [optional]
**remarks** | **String** | Remarks |  [optional]
**status** | **String** | Status |  [optional]


<a name="PosTypeEnum"></a>
## Enum: PosTypeEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
ATTENDED | &quot;ATTENDED&quot;
UNATTENDED | &quot;UNATTENDED&quot;


<a name="InterfaceTypeEnum"></a>
## Enum: InterfaceTypeEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
FILE | &quot;FILE&quot;
SOCKET | &quot;SOCKET&quot;


<a name="ReceiptSourceEnum"></a>
## Enum: ReceiptSourceEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
EPOS | &quot;EPOS&quot;
EVT | &quot;EVT&quot;


<a name="ReceiptInterfaceEnum"></a>
## Enum: ReceiptInterfaceEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
FILE | &quot;FILE&quot;
NA | &quot;NA&quot;
SOCKET | &quot;SOCKET&quot;


<a name="HospitalitySupportEnum"></a>
## Enum: HospitalitySupportEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
YES | &quot;YES&quot;
NO | &quot;NO&quot;


<a name="GiftCardSupportEnum"></a>
## Enum: GiftCardSupportEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
YES | &quot;YES&quot;
NO | &quot;NO&quot;



