// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/constraint;
import ballerina/http;

public type CreateA_SalesOrderSimulation_to_PricingElement record {
    CreateA_SalesOrderPrcgElmntSimln[] results?;
};

public type A_SalesOrderItemSimulation_to_ScheduleLine record {
    A_SalesOrderScheduleLineSimln[] results?;
};

public type A_SlsOrdSimlnValAddedSrvcOrderByOptions ("ValueAddedServiceType"|"ValueAddedServiceType desc"|"ValueAddedSubServiceType"|"ValueAddedSubServiceType desc"|"SalesOrder"|"SalesOrder desc"|"SalesOrderItem"|"SalesOrderItem desc"|"ValAddedSrvcTransactionNumber"|"ValAddedSrvcTransactionNumber desc"|"ValAddedSrvcItemGroup"|"ValAddedSrvcItemGroup desc"|"ValAddedSrvcItemNumber"|"ValAddedSrvcItemNumber desc"|"ValueAddedServiceProduct"|"ValueAddedServiceProduct desc"|"ValAddedSrvcHasToBeOrdered"|"ValAddedSrvcHasToBeOrdered desc"|"ValAddedSrvcIncrement"|"ValAddedSrvcIncrement desc"|"ValueAddedServiceChargeCode"|"ValueAddedServiceChargeCode desc"|"ValAddedSrvcIsCreatedManually"|"ValAddedSrvcIsCreatedManually desc"|"ValAddedSrvcItemNumberInSD"|"ValAddedSrvcItemNumberInSD desc"|"ValAddedSrvcIsRlvtForProcmt"|"ValAddedSrvcIsRlvtForProcmt desc"|"ValueAddedServiceText1"|"ValueAddedServiceText1 desc"|"ValueAddedServiceText2"|"ValueAddedServiceText2 desc"|"ValueAddedServiceText3"|"ValueAddedServiceText3 desc")[];

public type CreateA_SalesOrderItemSimulation_to_Partner record {
    CreateA_SalesOrderItemPartnerSimln[] results?;
};

public type CreateA_SalesOrderSimulation_to_Partner record {
    CreateA_SalesOrderPartnerSimulation[] results?;
};

public type A_SalesOrderSimulation_to_Partner record {
    A_SalesOrderPartnerSimulation[] results?;
};

public type A_SalesOrderPricingSimulation record {
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    # Net Value of the Sales Document in Document Currency
    string? TotalNetAmount?;
    # SD Document Currency
    string? TransactionCurrency?;
    A_SalesOrderSimulation to_SalesOrder?;
};

public type UpdateA_SlsOrdSimlnValAddedSrvc record {
    # VAS Material Number
    string? ValueAddedServiceProduct?;
    # Requirement Relevancy Flag for VAS Material
    boolean? ValAddedSrvcHasToBeOrdered?;
    # VAS Increment
    string? ValAddedSrvcIncrement?;
    # VAS Charge Codes
    string? ValueAddedServiceChargeCode?;
    # Procurement Relevant for VAS Material
    boolean? ValAddedSrvcIsRlvtForProcmt?;
    # VAS Field 1 for Free Use by Customer
    string? ValueAddedServiceText1?;
    # VAS Field 2 for Free Use by Customer
    string? ValueAddedServiceText2?;
    # VAS Field 3 for Free Use by Customer
    string? ValueAddedServiceText3?;
    string? ValueAddedServiceLongText?;
};

# Represents the Queries record for the operation: listA_SlsOrdSimlnValAddedSrvcs
public type ListA_SlsOrdSimlnValAddedSrvcsQueries record {
    # Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    int \$top?;
    # Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    string \$filter?;
    # Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    A_SlsOrdSimlnValAddedSrvcOrderByOptions \$orderby?;
    # Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    "allpages"|"none" \$inlinecount?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    A_SlsOrdSimlnValAddedSrvcSelectOptions \$select?;
};

public type CreateA_SalesOrderPricingSimulation record {
    # Net Value of the Sales Document in Document Currency
    string? TotalNetAmount?;
    CreateA_SalesOrderSimulation to_SalesOrder?;
};

public type CreateA_SalesOrderItemPartnerSimln record {
    @constraint:String {maxLength: 2}
    string PartnerFunction;
    # Customer Number
    string? Customer?;
    # Account Number of Supplier
    string? Supplier?;
    string? Personnel?;
    # Number of Contact Person
    string? ContactPerson?;
    # VAT Registration Number
    string? VATRegistration?;
    CreateA_SalesOrderSimulation to_SalesOrder?;
    CreateA_SalesOrderItemSimulation to_SalesOrderItem?;
};

public type Modified\ A_SlsOrdSimlnValAddedSrvcType record {
    UpdateA_SlsOrdSimlnValAddedSrvc d?;
};

public type A_SalesOrderItemPartnerSimln record {
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    # Sales Order Item
    @constraint:String {maxLength: 6}
    string SalesOrderItem?;
    @constraint:String {maxLength: 2}
    string PartnerFunction?;
    # Customer Number
    string? Customer?;
    # Account Number of Supplier
    string? Supplier?;
    string? Personnel?;
    # Number of Contact Person
    string? ContactPerson?;
    # VAT Registration Number
    string? VATRegistration?;
    A_SalesOrderSimulation to_SalesOrder?;
    A_SalesOrderItemSimulation to_SalesOrderItem?;
};

public type A_SalesOrderSimulation_to_Item record {
    A_SalesOrderItemSimulation[] results?;
};

public type CreateA_SalesOrderItemSimulation_to_ScheduleLine record {
    CreateA_SalesOrderScheduleLineSimln[] results?;
};

public type A_SalesOrderSimulation record {
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    string? SalesOrderType?;
    string? SalesOrganization?;
    string? DistributionChannel?;
    string? OrganizationDivision?;
    string? SalesGroup?;
    string? SalesOffice?;
    string? SalesDistrict?;
    string? SoldToParty?;
    string? CustomerGroup?;
    string? AdditionalCustomerGroup1?;
    string? AdditionalCustomerGroup2?;
    string? AdditionalCustomerGroup3?;
    string? AdditionalCustomerGroup4?;
    string? AdditionalCustomerGroup5?;
    string? PurchaseOrderByCustomer?;
    # Customer Purchase Order Type
    string? CustomerPurchaseOrderType?;
    string? CustomerPurchaseOrderDate?;
    # Document Date (Date Received/Sent)
    string? SalesOrderDate?;
    # SD Document Currency
    string? TransactionCurrency?;
    # Reference Document Number
    string? AccountingDocExternalReference?;
    # Alternative Tax Classification
    string? CustomerTaxClassification1?;
    # Tax Classification 2 for Customer
    string? CustomerTaxClassification2?;
    # Tax Classification 3 for Customer
    string? CustomerTaxClassification3?;
    # Tax Classification 4 for Customer
    string? CustomerTaxClassification4?;
    # Tax Classification 5 for Customer
    string? CustomerTaxClassification5?;
    # Tax Classification 6 for Customer
    string? CustomerTaxClassification6?;
    # Tax Classification 7 for Customer
    string? CustomerTaxClassification7?;
    # Tax Classification 8 for Customer
    string? CustomerTaxClassification8?;
    # Tax Classification 9 for Customer
    string? CustomerTaxClassification9?;
    string? TaxDepartureCountry?;
    string? VATRegistrationCountry?;
    string? PriceListType?;
    string? CustomerPriceGroup?;
    # Order Reason (Reason for the Business Transaction)
    string? SDDocumentReason?;
    # Date for Pricing and Exchange Rate
    string? PricingDate?;
    # Pricing Procedure in Pricing
    string? SDPricingProcedure?;
    string? RequestedDeliveryDate?;
    string? ShippingCondition?;
    # Complete Delivery Defined for Each Sales Order
    boolean? CompleteDeliveryIsDefined?;
    string? ShippingType?;
    # Incoterms (Part 1)
    string? IncotermsClassification?;
    string? IncotermsTransferLocation?;
    string? IncotermsLocation1?;
    string? IncotermsLocation2?;
    string? IncotermsVersion?;
    # Document Number of Reference Document
    string? ReferenceSDDocument?;
    # Key for Terms of Payment
    string? CustomerPaymentTerms?;
    string? PaymentMethod?;
    A_SalesOrderCreditSimulation to_Credit?;
    A_SalesOrderSimulation_to_Item to_Item?;
    A_SalesOrderSimulation_to_Partner to_Partner?;
    A_SalesOrderPricingSimulation to_Pricing?;
    A_SalesOrderSimulation_to_PricingElement to_PricingElement?;
};

# OAuth2 Refresh Token Grant Configs
public type OAuth2RefreshTokenGrantConfig record {|
    *http:OAuth2RefreshTokenGrantConfig;
    # Refresh URL
    string refreshUrl = "https://{host}:{port}";
|};

public type A_SlsOrdSimlnValAddedSrvcWrapper record {
    A_SlsOrdSimlnValAddedSrvc d?;
};

public type CollectionOfA_SlsOrdSimlnValAddedSrvcWrapper record {
    CollectionOfA_SlsOrdSimlnValAddedSrvc d?;
};

public type CreateA_SalesOrderSimulation record {
    @constraint:String {maxLength: 10}
    string SalesOrder;
    string? SalesOrderType?;
    string? SalesOrganization?;
    string? DistributionChannel?;
    string? OrganizationDivision?;
    string? SalesGroup?;
    string? SalesOffice?;
    string? SalesDistrict?;
    string? SoldToParty?;
    string? CustomerGroup?;
    string? AdditionalCustomerGroup1?;
    string? AdditionalCustomerGroup2?;
    string? AdditionalCustomerGroup3?;
    string? AdditionalCustomerGroup4?;
    string? AdditionalCustomerGroup5?;
    string? PurchaseOrderByCustomer?;
    # Customer Purchase Order Type
    string? CustomerPurchaseOrderType?;
    string? CustomerPurchaseOrderDate?;
    # Document Date (Date Received/Sent)
    string? SalesOrderDate?;
    # SD Document Currency
    string? TransactionCurrency?;
    # Reference Document Number
    string? AccountingDocExternalReference?;
    # Alternative Tax Classification
    string? CustomerTaxClassification1?;
    # Tax Classification 2 for Customer
    string? CustomerTaxClassification2?;
    # Tax Classification 3 for Customer
    string? CustomerTaxClassification3?;
    # Tax Classification 4 for Customer
    string? CustomerTaxClassification4?;
    # Tax Classification 5 for Customer
    string? CustomerTaxClassification5?;
    # Tax Classification 6 for Customer
    string? CustomerTaxClassification6?;
    # Tax Classification 7 for Customer
    string? CustomerTaxClassification7?;
    # Tax Classification 8 for Customer
    string? CustomerTaxClassification8?;
    # Tax Classification 9 for Customer
    string? CustomerTaxClassification9?;
    string? TaxDepartureCountry?;
    string? VATRegistrationCountry?;
    string? PriceListType?;
    string? CustomerPriceGroup?;
    # Order Reason (Reason for the Business Transaction)
    string? SDDocumentReason?;
    # Date for Pricing and Exchange Rate
    string? PricingDate?;
    string? RequestedDeliveryDate?;
    string? ShippingCondition?;
    # Complete Delivery Defined for Each Sales Order
    boolean? CompleteDeliveryIsDefined?;
    string? ShippingType?;
    # Incoterms (Part 1)
    string? IncotermsClassification?;
    string? IncotermsTransferLocation?;
    string? IncotermsLocation1?;
    string? IncotermsLocation2?;
    string? IncotermsVersion?;
    # Document Number of Reference Document
    string? ReferenceSDDocument?;
    # Key for Terms of Payment
    string? CustomerPaymentTerms?;
    string? PaymentMethod?;
    CreateA_SalesOrderCreditSimulation to_Credit?;
    CreateA_SalesOrderSimulation_to_Item to_Item?;
    CreateA_SalesOrderSimulation_to_Partner to_Partner?;
    CreateA_SalesOrderPricingSimulation to_Pricing?;
    CreateA_SalesOrderSimulation_to_PricingElement to_PricingElement?;
};

public type A_SalesOrderSimulation_to_PricingElement record {
    A_SalesOrderPrcgElmntSimln[] results?;
};

public type CreateA_SalesOrderCreditSimulation record {
    # Overall Status of Credit Checks
    string? TotalCreditCheckStatus?;
    CreateA_SalesOrderSimulation to_SalesOrder?;
};

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Configurations related to client authentication
    http:BearerTokenConfig|OAuth2RefreshTokenGrantConfig|http:CredentialsConfig auth;
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    ClientHttp1Settings http1Settings?;
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings?;
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 60;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache?;
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits?;
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
|};

public type A_SalesOrderItemSimulation_to_PricingElement record {
    A_SalesOrderItmPrcgElmntSimln[] results?;
};

public type A_SalesOrderCreditSimulation record {
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    # Overall Status of Credit Checks
    string? TotalCreditCheckStatus?;
    A_SalesOrderSimulation to_SalesOrder?;
};

public type CreateA_SalesOrderScheduleLineSimln record {
    @constraint:String {maxLength: 4}
    string ScheduleLine;
    # Requested Delivery Date
    string? RequestedDeliveryDate?;
    # Confirmed Delivery Date
    string? ConfirmedDeliveryDate?;
    string? OrderQuantityUnit?;
    # SAP Unit Code for Order Quantity
    string? OrderQuantitySAPUnit?;
    # ISO Unit Code for Order Quantity
    string? OrderQuantityISOUnit?;
    # Order Quantity in Sales Units
    string? ScheduleLineOrderQuantity?;
    string? ConfdOrderQtyByMatlAvailCheck?;
    # Open Confirmed Delivery Quantity
    string? OpenConfdDelivQtyInOrdQtyUnit?;
    # Corrected quantity in sales unit
    string? CorrectedQtyInOrderQtyUnit?;
    CreateA_SalesOrderSimulation to_SalesOrder?;
    CreateA_SalesOrderItemSimulation to_SalesOrderItem?;
};

public type A_SalesOrderPrcgElmntSimln record {
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    @constraint:String {maxLength: 3}
    string PricingProcedureStep?;
    # Condition Counter
    @constraint:String {maxLength: 3}
    string PricingProcedureCounter?;
    string? ConditionType?;
    # Condition Pricing Date
    string? PriceConditionDeterminationDte?;
    # Calculation Type for Condition
    string? ConditionCalculationType?;
    string? ConditionBaseValue?;
    # Condition Amount or Percentage
    string? ConditionRateValue?;
    # Currency Key
    string? ConditionCurrency?;
    # Condition Pricing Unit
    string? ConditionQuantity?;
    # Condition Unit in the Document
    string? ConditionQuantityUnit?;
    # SAP Unit Code for Condition Quantity
    string? ConditionQuantitySAPUnit?;
    # ISO Unit Code for Condition Quantity
    string? ConditionQuantityISOUnit?;
    # Condition is used for statistics
    boolean? ConditionIsForStatistics?;
    # Origin of the Condition
    string? ConditionOrigin?;
    string? IsGroupCondition?;
    string? ConditionAmount?;
    # SD Document Currency
    string? TransactionCurrency?;
    # Condition is Inactive
    string? ConditionInactiveReason?;
    string? ConditionClass?;
    # Scale Basis Indicator
    string? PricingScaleBasis?;
    # Scale Base Value
    string? ConditionScaleBasisValue?;
    # Condition Changed Manually
    boolean? ConditionIsManuallyChanged?;
    A_SalesOrderSimulation to_SalesOrder?;
};

public type CreateA_SlsOrdSimlnValAddedSrvc record {
    @constraint:String {maxLength: 2}
    string ValueAddedServiceType;
    @constraint:String {maxLength: 5}
    string ValueAddedSubServiceType;
    # Document Number of Reference Document
    @constraint:String {maxLength: 10}
    string SalesOrder;
    # Item Number of the Reference Item
    @constraint:String {maxLength: 6}
    string SalesOrderItem;
    # VAS Material Number
    string? ValueAddedServiceProduct?;
    # Requirement Relevancy Flag for VAS Material
    boolean? ValAddedSrvcHasToBeOrdered?;
    # VAS Increment
    string? ValAddedSrvcIncrement?;
    # VAS Charge Codes
    string? ValueAddedServiceChargeCode?;
    # Procurement Relevant for VAS Material
    boolean? ValAddedSrvcIsRlvtForProcmt?;
    # VAS Field 1 for Free Use by Customer
    string? ValueAddedServiceText1?;
    # VAS Field 2 for Free Use by Customer
    string? ValueAddedServiceText2?;
    # VAS Field 3 for Free Use by Customer
    string? ValueAddedServiceText3?;
    string? ValueAddedServiceLongText?;
};

# The number of entities in the collection. Available when using the [$inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67) query option.
public type count string;

public type A_SalesOrderPartnerSimulation record {
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    @constraint:String {maxLength: 2}
    string PartnerFunction?;
    # Customer Number
    string? Customer?;
    # Account Number of Supplier
    string? Supplier?;
    string? Personnel?;
    # Number of Contact Person
    string? ContactPerson?;
    # VAT Registration Number
    string? VATRegistration?;
    A_SalesOrderSimulation to_SalesOrder?;
};

public type CreateA_SalesOrderSimulation_to_Item record {
    CreateA_SalesOrderItemSimulation[] results?;
};

public type A_SalesOrderItemSimulation_to_Partner record {
    A_SalesOrderItemPartnerSimln[] results?;
};

# Proxy server configurations to be used with the HTTP client endpoint.
public type ProxyConfig record {|
    # Host name of the proxy server
    string host = "";
    # Proxy server port
    int port = 0;
    # Proxy server username
    string userName = "";
    # Proxy server password
    @display {label: "", kind: "password"}
    string password = "";
|};

public type CreateA_SalesOrderItmPrcgElmntSimln record {
    @constraint:String {maxLength: 3}
    string PricingProcedureStep;
    # Condition Counter
    @constraint:String {maxLength: 3}
    string PricingProcedureCounter;
    string? ConditionType?;
    # Condition Amount or Percentage
    string? ConditionRateValue?;
    # Currency Key
    string? ConditionCurrency?;
    # Condition Pricing Unit
    string? ConditionQuantity?;
    # Condition Unit in the Document
    string? ConditionQuantityUnit?;
    # SAP Unit Code for Condition Quantity
    string? ConditionQuantitySAPUnit?;
    # ISO Unit Code for Condition Quantity
    string? ConditionQuantityISOUnit?;
    # SD Document Currency
    string? TransactionCurrency?;
    CreateA_SalesOrderSimulation to_SalesOrder?;
    CreateA_SalesOrderItemSimulation to_SalesOrderItem?;
};

public type CreateA_SalesOrderPartnerSimulation record {
    @constraint:String {maxLength: 2}
    string PartnerFunction;
    # Customer Number
    string? Customer?;
    # Account Number of Supplier
    string? Supplier?;
    string? Personnel?;
    # Number of Contact Person
    string? ContactPerson?;
    # VAT Registration Number
    string? VATRegistration?;
    CreateA_SalesOrderSimulation to_SalesOrder?;
};

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

public type A_SalesOrderItemSimulation record {
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    # Sales Order Item
    @constraint:String {maxLength: 6}
    string SalesOrderItem?;
    # Higher-Level Item in Bill of Material Structures
    string? HigherLevelItem?;
    # ID for higher-level item usage
    string? HigherLevelItemUsage?;
    # Sales Document Item Category
    string? SalesOrderItemCategory?;
    # Short Text for Sales Order Item
    string? SalesOrderItemText?;
    string? PurchaseOrderByCustomer?;
    # Material Number
    string? Material?;
    # Material Number Used by Customer
    string? MaterialByCustomer?;
    # Date for Pricing and Exchange Rate
    string? PricingDate?;
    # Pricing Reference Material
    string? PricingReferenceMaterial?;
    string? RequestedQuantity?;
    # Unit of the Requested Quantity
    string? RequestedQuantityUnit?;
    # SAP Unit Code for Requested Quantity
    string? RequestedQuantitySAPUnit?;
    # ISO Unit Code for Requested Quantity
    string? RequestedQuantityISOUnit?;
    string? OrderQuantityUnit?;
    # SAP Unit Code for Order Quantity
    string? OrderQuantitySAPUnit?;
    # ISO Unit Code for Order Quantity
    string? OrderQuantityISOUnit?;
    # Cumulative Confirmed Quantity in Sales Unit
    string? ConfdDelivQtyInOrderQtyUnit?;
    # Gross Weight of the Item
    string? ItemGrossWeight?;
    # Net Weight of the Item
    string? ItemNetWeight?;
    string? ItemWeightUnit?;
    # SAP Unit Code for Item Weight
    string? ItemWeightSAPUnit?;
    # ISO Unit Code for Item Weight
    string? ItemWeightISOUnit?;
    # Volume of the item
    string? ItemVolume?;
    string? ItemVolumeUnit?;
    # SAP Unit Code for Item Volume
    string? ItemVolumeSAPUnit?;
    # ISO Unit Code for Item Volume
    string? ItemVolumeISOUnit?;
    # SD Document Currency
    string? TransactionCurrency?;
    # Net Value of the Document Item in Document Currency
    string? NetAmount?;
    # Tax Amount in Document Currency
    string? TaxAmount?;
    # Cost in Document Currency
    string? CostAmount?;
    # Subtotal 1 from Pricing Procedure for Price Element
    string? Subtotal1Amount?;
    # Subtotal 2 from Pricing Procedure for Price Element
    string? Subtotal2Amount?;
    # Subtotal 3 from Pricing Procedure for Price Element
    string? Subtotal3Amount?;
    # Subtotal 4 from Pricing Procedure for Price Element
    string? Subtotal4Amount?;
    # Subtotal 5 from Pricing Procedure for Price Element
    string? Subtotal5Amount?;
    # Subtotal 6 from Pricing Procedure for Price Element
    string? Subtotal6Amount?;
    # Reason for Material Substitution
    string? MaterialSubstitutionReason?;
    string? MaterialGroup?;
    string? MaterialPricingGroup?;
    # Batch Number
    string? Batch?;
    # Plant (Own or External)
    string? Plant?;
    string? StorageLocation?;
    # Delivery Group (Items are delivered together)
    string? DeliveryGroup?;
    # Shipping Point / Receiving Point
    string? ShippingPoint?;
    string? ShippingType?;
    string? DeliveryPriority?;
    # Incoterms (Part 1)
    string? IncotermsClassification?;
    string? IncotermsTransferLocation?;
    string? IncotermsLocation1?;
    string? IncotermsLocation2?;
    # Tax Classification for Material
    string? ProductTaxClassification1?;
    # Tax Classification for Material
    string? ProductTaxClassification2?;
    # Tax Classification for Material
    string? ProductTaxClassification3?;
    # Tax Classification for Material
    string? ProductTaxClassification4?;
    # Tax Classification for Material
    string? ProductTaxClassification5?;
    # Tax Classification for Material
    string? ProductTaxClassification6?;
    # Tax Classification for Material
    string? ProductTaxClassification7?;
    # Tax Classification for Material
    string? ProductTaxClassification8?;
    # Tax Classification for Material
    string? ProductTaxClassification9?;
    # Document Number of Reference Document
    string? ReferenceSDDocument?;
    # Item Number of the Reference Item
    string? ReferenceSDDocumentItem?;
    # Key for Terms of Payment
    string? CustomerPaymentTerms?;
    # Reason for Rejection of Sales Documents
    string? SalesDocumentRjcnReason?;
    A_SalesOrderItemSimulation_to_Partner to_Partner?;
    A_SalesOrderItemSimulation_to_PricingElement to_PricingElement?;
    A_SalesOrderSimulation to_SalesOrder?;
    A_SalesOrderItemSimulation_to_ScheduleLine to_ScheduleLine?;
};

public type CreateA_SalesOrderItemSimulation record {
    # Sales Order Item
    @constraint:String {maxLength: 6}
    string SalesOrderItem;
    # Higher-Level Item in Bill of Material Structures
    string? HigherLevelItem?;
    # Sales Document Item Category
    string? SalesOrderItemCategory?;
    # Short Text for Sales Order Item
    string? SalesOrderItemText?;
    string? PurchaseOrderByCustomer?;
    # Material Number
    string? Material?;
    # Material Number Used by Customer
    string? MaterialByCustomer?;
    # Date for Pricing and Exchange Rate
    string? PricingDate?;
    # Pricing Reference Material
    string? PricingReferenceMaterial?;
    string? RequestedQuantity?;
    # Unit of the Requested Quantity
    string? RequestedQuantityUnit?;
    # SAP Unit Code for Requested Quantity
    string? RequestedQuantitySAPUnit?;
    # ISO Unit Code for Requested Quantity
    string? RequestedQuantityISOUnit?;
    string? MaterialGroup?;
    string? MaterialPricingGroup?;
    # Batch Number
    string? Batch?;
    # Plant (Own or External)
    string? Plant?;
    string? StorageLocation?;
    # Delivery Group (Items are delivered together)
    string? DeliveryGroup?;
    # Shipping Point / Receiving Point
    string? ShippingPoint?;
    string? ShippingType?;
    string? DeliveryPriority?;
    # Incoterms (Part 1)
    string? IncotermsClassification?;
    string? IncotermsTransferLocation?;
    string? IncotermsLocation1?;
    string? IncotermsLocation2?;
    # Tax Classification for Material
    string? ProductTaxClassification1?;
    # Tax Classification for Material
    string? ProductTaxClassification2?;
    # Tax Classification for Material
    string? ProductTaxClassification3?;
    # Tax Classification for Material
    string? ProductTaxClassification4?;
    # Tax Classification for Material
    string? ProductTaxClassification5?;
    # Tax Classification for Material
    string? ProductTaxClassification6?;
    # Tax Classification for Material
    string? ProductTaxClassification7?;
    # Tax Classification for Material
    string? ProductTaxClassification8?;
    # Tax Classification for Material
    string? ProductTaxClassification9?;
    # Document Number of Reference Document
    string? ReferenceSDDocument?;
    # Item Number of the Reference Item
    string? ReferenceSDDocumentItem?;
    # Key for Terms of Payment
    string? CustomerPaymentTerms?;
    # Reason for Rejection of Sales Documents
    string? SalesDocumentRjcnReason?;
    CreateA_SalesOrderItemSimulation_to_Partner to_Partner?;
    CreateA_SalesOrderItemSimulation_to_PricingElement to_PricingElement?;
    CreateA_SalesOrderSimulation to_SalesOrder?;
    CreateA_SalesOrderItemSimulation_to_ScheduleLine to_ScheduleLine?;
};

# Represents the Queries record for the operation: getA_SlsOrdSimlnValAddedSrvc
public type GetA_SlsOrdSimlnValAddedSrvcQueries record {
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    A_SlsOrdSimlnValAddedSrvcSelectOptions \$select?;
};

public type A_SalesOrderScheduleLineSimln record {
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    @constraint:String {maxLength: 6}
    string SalesOrderItem?;
    @constraint:String {maxLength: 4}
    string ScheduleLine?;
    # Requested Delivery Date
    string? RequestedDeliveryDate?;
    # Confirmed Delivery Date
    string? ConfirmedDeliveryDate?;
    string? OrderQuantityUnit?;
    # SAP Unit Code for Order Quantity
    string? OrderQuantitySAPUnit?;
    # ISO Unit Code for Order Quantity
    string? OrderQuantityISOUnit?;
    # Order Quantity in Sales Units
    string? ScheduleLineOrderQuantity?;
    string? ConfdOrderQtyByMatlAvailCheck?;
    # Open Confirmed Delivery Quantity
    string? OpenConfdDelivQtyInOrdQtyUnit?;
    # Corrected quantity in sales unit
    string? CorrectedQtyInOrderQtyUnit?;
    A_SalesOrderSimulation to_SalesOrder?;
    A_SalesOrderItemSimulation to_SalesOrderItem?;
};

public type CreateA_SalesOrderItemSimulation_to_PricingElement record {
    CreateA_SalesOrderItmPrcgElmntSimln[] results?;
};

public type A_SlsOrdSimlnValAddedSrvc record {
    @constraint:String {maxLength: 2}
    string ValueAddedServiceType?;
    @constraint:String {maxLength: 5}
    string ValueAddedSubServiceType?;
    # Document Number of Reference Document
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    # Item Number of the Reference Item
    @constraint:String {maxLength: 6}
    string SalesOrderItem?;
    string? ValAddedSrvcTransactionNumber?;
    string? ValAddedSrvcItemGroup?;
    string? ValAddedSrvcItemNumber?;
    # VAS Material Number
    string? ValueAddedServiceProduct?;
    # Requirement Relevancy Flag for VAS Material
    boolean? ValAddedSrvcHasToBeOrdered?;
    # VAS Increment
    string? ValAddedSrvcIncrement?;
    # VAS Charge Codes
    string? ValueAddedServiceChargeCode?;
    # Manual Entry Indicator
    string? ValAddedSrvcIsCreatedManually?;
    # VAS Item Number in SD
    string? ValAddedSrvcItemNumberInSD?;
    # Procurement Relevant for VAS Material
    boolean? ValAddedSrvcIsRlvtForProcmt?;
    # VAS Field 1 for Free Use by Customer
    string? ValueAddedServiceText1?;
    # VAS Field 2 for Free Use by Customer
    string? ValueAddedServiceText2?;
    # VAS Field 3 for Free Use by Customer
    string? ValueAddedServiceText3?;
    string? ValueAddedServiceLongText?;
};

public type CreateA_SalesOrderPrcgElmntSimln record {
    @constraint:String {maxLength: 3}
    string PricingProcedureStep;
    # Condition Counter
    @constraint:String {maxLength: 3}
    string PricingProcedureCounter;
    string? ConditionType?;
    # Condition Amount or Percentage
    string? ConditionRateValue?;
    # Currency Key
    string? ConditionCurrency?;
    # Condition Pricing Unit
    string? ConditionQuantity?;
    # Condition Unit in the Document
    string? ConditionQuantityUnit?;
    # SAP Unit Code for Condition Quantity
    string? ConditionQuantitySAPUnit?;
    # ISO Unit Code for Condition Quantity
    string? ConditionQuantityISOUnit?;
    # SD Document Currency
    string? TransactionCurrency?;
    CreateA_SalesOrderSimulation to_SalesOrder?;
};

public type A_SalesOrderSimulationWrapper record {
    A_SalesOrderSimulation d?;
};

public type CollectionOfA_SlsOrdSimlnValAddedSrvc record {
    count __count?;
    A_SlsOrdSimlnValAddedSrvc[] results?;
};

public type A_SalesOrderItmPrcgElmntSimln record {
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    # Sales Order Item
    @constraint:String {maxLength: 6}
    string SalesOrderItem?;
    @constraint:String {maxLength: 3}
    string PricingProcedureStep?;
    # Condition Counter
    @constraint:String {maxLength: 3}
    string PricingProcedureCounter?;
    string? ConditionType?;
    # Condition Pricing Date
    string? PriceConditionDeterminationDte?;
    # Calculation Type for Condition
    string? ConditionCalculationType?;
    string? ConditionBaseValue?;
    # Condition Amount or Percentage
    string? ConditionRateValue?;
    # Currency Key
    string? ConditionCurrency?;
    # Condition Pricing Unit
    string? ConditionQuantity?;
    # Condition Unit in the Document
    string? ConditionQuantityUnit?;
    # SAP Unit Code for Condition Quantity
    string? ConditionQuantitySAPUnit?;
    # ISO Unit Code for Condition Quantity
    string? ConditionQuantityISOUnit?;
    # Condition is used for statistics
    boolean? ConditionIsForStatistics?;
    # Origin of the Condition
    string? ConditionOrigin?;
    string? IsGroupCondition?;
    string? ConditionAmount?;
    # SD Document Currency
    string? TransactionCurrency?;
    # Condition is Inactive
    string? ConditionInactiveReason?;
    string? ConditionClass?;
    # Scale Basis Indicator
    string? PricingScaleBasis?;
    # Scale Base Value
    string? ConditionScaleBasisValue?;
    # Condition Changed Manually
    boolean? ConditionIsManuallyChanged?;
    A_SalesOrderSimulation to_SalesOrder?;
    A_SalesOrderItemSimulation to_SalesOrderItem?;
};

public type A_SlsOrdSimlnValAddedSrvcSelectOptions ("ValueAddedServiceType"|"ValueAddedSubServiceType"|"SalesOrder"|"SalesOrderItem"|"ValAddedSrvcTransactionNumber"|"ValAddedSrvcItemGroup"|"ValAddedSrvcItemNumber"|"ValueAddedServiceProduct"|"ValAddedSrvcHasToBeOrdered"|"ValAddedSrvcIncrement"|"ValueAddedServiceChargeCode"|"ValAddedSrvcIsCreatedManually"|"ValAddedSrvcItemNumberInSD"|"ValAddedSrvcIsRlvtForProcmt"|"ValueAddedServiceText1"|"ValueAddedServiceText2"|"ValueAddedServiceText3"|"ValueAddedServiceLongText")[];
