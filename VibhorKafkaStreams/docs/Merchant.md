
# Merchant

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceOperatorName** | **String** | This field is auto populated based on Service Type choosen at the time of creation of Customer |  [optional]
**customerSupplierAccountCode** | **String** | This field should be auto captuted from Customer &amp; must be sent in merchant object |  [optional]
**customerSupplierAccountName** | **String** | This field should be auto captuted from Customer &amp; must be sent in merchant object |  [optional]
**merchantNumber** | **String** | This field is auto populated &amp; an auto generated no. Defines the uniqueness no of Merchant. |  [optional]
**name** | **String** | This field denots the name of a merchant. This field can contain alpha and numeric characters only | 
**nameAbbreviation** | **String** | This field denots the name of a merchant. This field can contain alpha and numeric characters only | 
**startDate** | **String** | Automatically filled as current date &amp; can not be updated by User | 
**mode** | **String** | Defines the mode of Merchant. Auto populated &amp; can not be updated by User | 
**merchantType** | [**MerchantTypeEnum**](#MerchantTypeEnum) | Merchant Type | 
**status** | [**StatusEnum**](#StatusEnum) | Status of Merchant |  [optional]
**activityCode** | **Integer** | Activity Code selection is mandatory for Merchants on-boarding for Amex ISO Acquirer. |  [optional]
**timeZone** | **String** | Captured by User from a dropdown , carried from a drop down. |  [optional]
**regionNumber** | **String** | Carried from master table of Region. |  [optional]
**bankAccountId** | **Integer** | Carried from Bank account table. |  [optional]
**bankAccountName** | **String** | Bank Account Name |  [optional]
**registrationNumber** | **String** | Registration Number of Merchant |  [optional]
**incorporationDate** | **String** | Captured from a Date picker,format as dd/MM/yyyy |  [optional]
**changeDate** | **String** | Captured from a Date picker,format as dd/MM/yyyy |  [optional]
**changeTime** | **String** |  |  [optional]
**certificateId** | **String** | Certificate Id |  [optional]
**creditRating** | **Integer** | A 3 digit number |  [optional]
**webUrl** | **String** | Web URL |  [optional]
**maximumDailyTransactionValue** | **Double** | Maximum Daily Transaction Value |  [optional]
**maximumWeeklyTransactionValue** | **Double** | Maximum Weekly Transaction Value |  [optional]
**maximumMonthlyTransactionValue** | **Double** | Maximum Monthly Transaction Value |  [optional]
**maximumSingleTransactionValue** | **Double** | Maximum Single Transaction Value |  [optional]
**changeNumber** | **Double** | Change Number |  [optional]
**message** | **String** | Message |  [optional]
**userName** | **String** | User Name |  [optional]
**suspendReason** | **String** | Suspend Reason |  [optional]
**suspendDate** | **String** | Suspend Date |  [optional]
**epOSProvider** | **String** | EPOS Provider |  [optional]
**epOSProviderAddress** | **String** | EPOS Provider Address |  [optional]
**epOSProviderTelephoneNo** | **String** | EPOS Provider Telephone Number |  [optional]
**receiptGenerationFlag** | **String** | Receipt Generation Flag |  [optional]
**p2PEEnrolled** | **String** | P2PE Enrolled |  [optional]
**creditReference** | **String** | Credit Reference |  [optional]
**vat** | **String** | Value added Tax |  [optional]
**currencyCode** | **String** | Currency code labelled as remittance currency name would be filled from currency. |  [optional]
**accountManager** | **String** | Account Manager would be filled from Account manager table. |  [optional]
**fieldSalesExecutive** | **String** | Field Sales Executive a dropdown prefilled from fieldSalesExecutive table. |  [optional]
**team** | [**TeamEnum**](#TeamEnum) | Region wise |  [optional]
**magFloorLimit** | **Float** | Magnetic Floor Limit |  [optional]
**chipFloorLimit** | **Integer** | Chip Floor Limit |  [optional]
**offlineTimer** | **Integer** | Offline Timer in minutes |  [optional]
**maximumTransactionPerCard** | **Integer** | Maximum Transaction Per Card |  [optional]
**tokenPolicyIdentifier** | **Integer** | A checkbox which helps user to check the prerequestie for Token Policy. |  [optional]
**subGroupID** | **String** | Sub Group ID |  [optional]
**refundPreference** | **String** | Refund Preference is a checkbox for user whether they seek to opt it or not. |  [optional]
**referredBy** | **String** | Referred By |  [optional]
**existingAcquirerName** | **String** | Existing acquirer name a dropdown for existing acquirer |  [optional]
**existingAcquirerMerchantNumber** | **String** | Existing acquirer merchant number a user input |  [optional]
**tradingStartDate** | **String** | Captured a date from date picker. format should be dd/MM/yyyy |  [optional]
**msCExpectedLiveDate** | **String** | Expected live date default it captured as current date in format of dd/MM/yyyy |  [optional]
**acquirerSpecificActivity** | **Integer** | Acquirer specific activity a drop down which consist values from ? |  [optional]
**msCCurrencyCode** | **String** | Currency code captured from Currency table |  [optional]
**shopOpenTime** | **String** | Shop Open Time in hh mm ss |  [optional]
**shopCloseTime** | **String** | Shop Close Time in hh mm ss |  [optional]
**proprietorshipType** | [**ProprietorshipTypeEnum**](#ProprietorshipTypeEnum) | Proprietorship Type; value for Limited Company or Limited Liability Partnership should be passed as &#39;Ltd Company&#39; &amp; for Sole Proprietor it should be &#39;Sole Prop&#39; |  [optional]
**otherProprietorship** | **String** | Other Proprietorship |  [optional]
**advanceDepositPer** | **Float** | Advance Deposit Percent (%) |  [optional]
**advanceDepositDays** | **Integer** | Advance Deposit Days |  [optional]
**perOfGoodsForPriorFullPay** | **Float** | Percent (%) Goods For Prior Full Payment |  [optional]
**avgDeliveryDaysForFullPay** | **Integer** | Average Delivery Days For Full Payment |  [optional]
**sepPerOfCardTurnoverOnGuarWarr** | **Float** | Separate % of Card Turnover on Guarantees/Warranties |  [optional]
**avgMonthsOfGuarWarrSold** | **Integer** | Average Months of Guarantees/Warranties Sold |  [optional]
**perOfGoodsReturnedUnderGuarWarr** | **Float** | Percent(%) of Goods Returned under Guarantee/Warranty |  [optional]
**perOfCardTurnoverForMemberSub** | **Float** | Percent(%) of Card Turnover for Memberships/Subscriptions |  [optional]
**avgMonthsOfMemberSub** | **Integer** | Average Months of Memberships/Subscriptions |  [optional]
**costOfMembership** | **Integer** | Cost of Membership |  [optional]
**currentCreditCardTurnoverPerAnnum** | **Integer** | Current Credit Card turnover per annum |  [optional]
**projCreditCardTurnoverPerAnnum** | **Integer** | Projected Credit Card turnover per annum |  [optional]
**avgCreditCardTransactionValue** | **Integer** | Average Credit Card transaction Value |  [optional]
**currentDebitCardTurnoverPerAnnum** | **Integer** | Current Debit Card turnover per annum |  [optional]
**projDebitCardTurnoverPerAnnum** | **Integer** | Projected Debit Card turnover per annum |  [optional]
**avgDebitCardTransactionValue** | **Integer** | Average Debit Card transaction Value |  [optional]
**totalCurrentCompanyTurnover** | **Integer** | Total Current Company Turnover |  [optional]
**totalProjectedCompanyTurnover** | **Integer** | Total Projected Company Turnover |  [optional]
**moTOCNPTurnoverPer** | **Float** | MOTO (CNP) % Turnover |  [optional]
**ecommerceCardPerTurnover** | **Float** | E-commerce card % Turnover |  [optional]
**b2BPerTurnover** | **Float** | B2B % Turnover |  [optional]
**expectedDeliveryDays** | **Integer** | Expected Delivery Days |  [optional]
**tradeAssociationName** | **String** | Trade Association Name |  [optional]
**serviceOperatorCode** | **String** | Service Operator Code a hidden value corresponding to serviceOperator |  [optional]
**cardCountryCodeReq** | **String** | Card Country Code Required |  [optional]
**cnPOverride** | **String** | CNP Override Flag |  [optional]
**dailyReconFlag** | **String** | Daily Transaction Reconciliation Flag |  [optional]
**dcCFlag** | **String** | Dynamic Currency Conversion Flag |  [optional]
**forcedKeyFlag** | **String** | Forced Key Flag |  [optional]
**goodsOwned** | **String** | Goods Owned |  [optional]
**goodsRemoteLocation** | **String** | Goods Remote Location |  [optional]
**subsWalletReq** | **String** | ECOMM Token |  [optional]
**msCStatus** | **String** | MSC Status flag |  [optional]
**terminalManBatch** | **String** | Terminal Managed Batch flag |  [optional]
**vaTFlag** | **String** | Value Added Tax Flag |  [optional]
**crossTokenFlag** | **String** | Cross Token Flag |  [optional]
**easyVWalletReq** | **String** | EPOS Token |  [optional]
**batchCloseDays** | **Integer** | This field is hidden and assigned as 1 if user Configure Batch Close Time |  [optional]
**batchCloseTime** | [**BatchCloseTimeEnum**](#BatchCloseTimeEnum) | Batch Close Time use 000000 for 00:00:00 and 040000 for 04:00:00 |  [optional]
**cbSales** | **Boolean** | Accepted Transaction Type - SALES |  [optional]
**cbRefund** | **Boolean** | Accepted Transaction Type - Refund |  [optional]
**cbCancel** | **Boolean** | Accepted Transaction Type - Cancel |  [optional]
**cbPreAuth** | **Boolean** | Accepted Transaction Type - Pre Autherisation |  [optional]
**cbPurchaseWithCashBack** | **Boolean** | Accepted Transaction Type - Purchase with Cash Back |  [optional]
**fileFormatCode** | **String** | Select Report Format (a dropdown from report format) |  [optional]
**fileName** | **String** | Enter Merchant File Name |  [optional]
**chipPINInstallation** | **Double** | Chip Pin Installation |  [optional]
**existingAcquirerName1** | **String** | Existing Acquirer Name |  [optional]
**formatCode** | **String** | Format Code |  [optional]
**allMidnightFlag** | **String** | Need to return from UI to update agent details |  [optional]
**allTermAgentFlag** | **String** | Need to return from UI to update agent and terminals details |  [optional]
**allMidnightChange** | **String** | Need to return from UI to update Batchclose Time |  [optional]
**midNight** | **String** | Need to return from UI to update agent details |  [optional]
**easyVWalletType** | **String** | Need to return from UI to update agent details |  [optional]
**divisionNumber** | **String** | Division Number |  [optional]
**customerRatingEnabled** | **String** | customerRating Flag |  [optional]
**whitelistFileFlag** | **String** | whitelist File Flag |  [optional]
**financialPartnerCode** | **String** | Partner code used for Financial Purpose |  [optional]
**adminCode** | **String** | Enable Omni Channel merchant boarding with WPG as Acqurier |  [optional]
**address** | [**Address**](Address.md) |  |  [optional]
**tradingAddress** | [**Address**](Address.md) |  |  [optional]
**supplierAddress1** | [**Address**](Address.md) |  |  [optional]
**supplierAddress2** | [**Address**](Address.md) |  |  [optional]
**goodsRemoteAddress1** | [**Address**](Address.md) |  |  [optional]
**goodsRemoteAddress2** | [**Address**](Address.md) |  |  [optional]
**contact** | [**Contact**](Contact.md) |  | 
**supplierContact1** | [**Contact**](Contact.md) |  |  [optional]
**supplierContact2** | [**Contact**](Contact.md) |  |  [optional]
**internetMerchant** | [**InternetMerchant**](InternetMerchant.md) |  |  [optional]
**penniesConfiguration** | [**AgentGroupPennies**](AgentGroupPennies.md) |  |  [optional]
**merchantAcquirerList** | [**List&lt;MerchantAcquirer&gt;**](MerchantAcquirer.md) |  |  [optional]


<a name="MerchantTypeEnum"></a>
## Enum: MerchantTypeEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
INTERNET_MERCHANT | &quot;Internet Merchant&quot;
POS_MERCHANT | &quot;POS Merchant&quot;


<a name="StatusEnum"></a>
## Enum: StatusEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
NORMAL | &quot;NORMAL&quot;
TRAINING | &quot;TRAINING&quot;


<a name="TeamEnum"></a>
## Enum: TeamEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
INTERNTNL | &quot;INTERNTNL&quot;
NORTH_EAST | &quot;NORTH-EAST&quot;
NORTH_WEST | &quot;NORTH-WEST&quot;
OEM | &quot;OEM&quot;
SOUTH_EAST | &quot;SOUTH-EAST&quot;
SOUTH_WEST | &quot;SOUTH-WEST&quot;


<a name="ProprietorshipTypeEnum"></a>
## Enum: ProprietorshipTypeEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
CHARITY | &quot;Charity&quot;
LIMITED_COMPANY_OR_LIMITED_LIABILITY_PARTNERSHIP | &quot;Limited Company or Limited Liability Partnership&quot;
OTHER | &quot;Other&quot;
PARTNERSHIP | &quot;Partnership&quot;
PLC | &quot;PLC&quot;
SOLE_PROPRIETOR | &quot;Sole Proprietor&quot;


<a name="BatchCloseTimeEnum"></a>
## Enum: BatchCloseTimeEnum
Name | Value
---- | -----
EMPTY | &quot;&quot;
_000000 | &quot;000000&quot;
_040000 | &quot;040000&quot;



