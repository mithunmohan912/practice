
# Agent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agentNumber** | **String** | Agent Number |  [optional]
**merchantNumber** | **String** | Merchant Number |  [optional]
**name** | **String** | Name | 
**contact** | [**Contact**](Contact.md) |  |  [optional]
**address** | [**Address**](Address.md) |  |  [optional]
**startDate** | **String** | Start Date(current date) | 
**changeDate** | **String** | Change Date |  [optional]
**changeTime** | **String** | Change Time |  [optional]
**mode** | **String** | Mode | 
**status** | [**StatusEnum**](#StatusEnum) | Status |  [optional]
**numberOfTerminal** | **Integer** | Number of Terminals |  [optional]
**activityCode** | **Integer** | Activity Code |  [optional]
**regionNumber** | **String** | Region Number |  [optional]
**bankAccountId** | **Integer** | Bank Account ID |  [optional]
**bankAccountName** | **String** | Bank Account Name |  [optional]
**currencyCode** | **String** | Currency Code |  [optional]
**currencyName** | **String** | Currency Name |  [optional]
**certificateId** | **String** | Certificate Id |  [optional]
**maximumDailyTransactionValue** | **Integer** | Maximum Daily Transaction Value |  [optional]
**maximumWeeklyTransactionValue** | **Integer** | Maximum Weekly Transaction Value |  [optional]
**maximumMonthlyTransactionValue** | **Integer** | Maximum Monthly Transaction Value |  [optional]
**maximumSingleTransactionValue** | **Integer** | Maximum Single Transaction Value |  [optional]
**message** | **String** | message |  [optional]
**refundPreference** | **String** | A checkbox for VAT Applicable |  [optional]
**midNight** | **String** | A checkbox for Midnight |  [optional]
**midNightTime** | **String** | Mid night time |  [optional]
**midNightDays** | **Integer** | Mid Night Days |  [optional]
**allMidNight** | **String** | All Mid night |  [optional]
**allTermAgent** | **String** | All Term Agent |  [optional]
**refundPreferenceLoaded** | **String** | Refund Preference Loaded |  [optional]
**merchantName** | **String** | Merchant Name |  [optional]
**activityDescription** | **String** | Activity Description |  [optional]
**regionDescription** | **String** | Region Description |  [optional]
**accountUnitNo** | **String** | Account Unit Number |  [optional]
**transactionCode** | **String** | Transaction Code |  [optional]
**vaTId** | **String** | VAT Id |  [optional]
**vaTRate** | **Integer** | VAT Rate |  [optional]
**terminalProfileId** | **Integer** | Terminal Profile Id |  [optional]
**terminalProfileName** | **String** | Terminal Profile Name |  [optional]
**offlineTimer** | **Integer** | Offline Timer in minutes |  [optional]
**existingAcquirerName** | **String** | Existing Acquirer Name |  [optional]
**existingAcquirerMerchantNumber** | **String** | Existing Acquirer Merchant Number |  [optional]
**acquirerChangeReason** | **String** | acquirer Change Reason |  [optional]
**bankCodeForSubmitPaperVouchers** | **String** | Bank Code For Submit Paper Vouchers |  [optional]
**numOfStationaryPacks** | **Integer** | Number Of Stationary Packs |  [optional]
**numOfPlasticCards** | **Integer** | Number Of Plastic Cards |  [optional]
**merchantOpratingInstructionReq** | **String** | A checkbox for merchant Oprating Instruction Req |  [optional]
**distributionAddress** | [**DistributionAddressEnum**](#DistributionAddressEnum) | Distribution Address corresponding to a value |  [optional]
**msCStatus** | **String** | A checkbox for MSC Status |  [optional]
**userName** | **String** | userName |  [optional]
**suspendReason** | **String** | Suspend Reason |  [optional]
**suspendDate** | **String** | Suspend Date |  [optional]
**giftCardEnabled** | **String** | Gift Card Enabled |  [optional]
**webAgent** | **String** | Web Agent |  [optional]
**terminalManBatch** | **String** | A checkbox for terminal Man Batch |  [optional]
**batchCloseDays** | **Integer** | Batch Close Days |  [optional]
**storeNumber** | **String** | Store Number |  [optional]
**batchCloseTime** | **String** | Batch Close Time |  [optional]
**businessType** | **String** | New/Existing Business |  [optional]
**financialPartnerCode** | **String** | Partner code used for Financial Purpose |  [optional]
**merchantCode** | **String** | Enable Omni Channel merchant boarding with WPG as Acqurier |  [optional]


<a name="StatusEnum"></a>
## Enum: StatusEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
TRAINING | &quot;TRAINING&quot;
NORMAL | &quot;NORMAL&quot;
LIVE | &quot;LIVE&quot;


<a name="DistributionAddressEnum"></a>
## Enum: DistributionAddressEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
C | &quot;C&quot;
O | &quot;O&quot;



