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

# Represents the Queries record for the operation: getA_SalesOrganizationText
public type GetA_SalesOrganizationTextQueries record {
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    A_SalesOrganizationTextExpandOptions \$expand?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    A_SalesOrganizationTextSelectOptions \$select?;
};

public type A_SalesOrganizationTextSelectOptions ("SalesOrganization"|"Language"|"SalesOrganizationName"|"to_SalesOrganization")[];

public type A_SalesOrganizationTextWrapper record {
    A_SalesOrganizationText d?;
};

public type SalesOrganizationOfA_SalesOrganizationTextExpandOptions ("to_Text")[];

# Represents the Queries record for the operation: getA_SalesOrganization
public type GetA_SalesOrganizationQueries record {
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    A_SalesOrganizationExpandOptions \$expand?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    A_SalesOrganizationSelectOptions \$select?;
};

public type A_SalesOrganizationTextExpandOptions ("to_SalesOrganization")[];

public type CollectionOfA_SalesOrganizationWrapper record {
    CollectionOfA_SalesOrganization d?;
};

public type A_SalesOrganizationWrapper record {
    A_SalesOrganization d?;
};

public type CollectionOfA_SalesOrganizationTextWrapper record {
    CollectionOfA_SalesOrganizationText d?;
};

public type SalesOrganizationOfA_SalesOrganizationTextSelectOptions ("SalesOrganization"|"SalesOrganizationCurrency"|"CompanyCode"|"IntercompanyBillingCustomer"|"to_Text")[];

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Configurations related to client authentication
    http:CredentialsConfig auth;
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

public type CollectionOfA_SalesOrganizationText record {
    count __count?;
    A_SalesOrganizationText[] results?;
};

# Represents the Queries record for the operation: getSalesOrganizationOfA_SalesOrganizationText
public type GetSalesOrganizationOfA_SalesOrganizationTextQueries record {
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    SalesOrganizationOfA_SalesOrganizationTextExpandOptions \$expand?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    SalesOrganizationOfA_SalesOrganizationTextSelectOptions \$select?;
};

# Represents the Queries record for the operation: listA_SalesOrganizationTexts
public type ListA_SalesOrganizationTextsQueries record {
    # Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    int \$top?;
    # Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    string \$filter?;
    # Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    A_SalesOrganizationTextOrderByOptions \$orderby?;
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    A_SalesOrganizationTextExpandOptions \$expand?;
    # Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    "allpages"|"none" \$inlinecount?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    A_SalesOrganizationTextSelectOptions \$select?;
};

# The number of entities in the collection. Available when using the [$inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67) query option.
public type count string;

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

public type A_SalesOrganization_to_Text record {
    A_SalesOrganizationText[] results?;
};

public type A_SalesOrganizationExpandOptions ("to_Text")[];

public type A_SalesOrganizationText record {
    @constraint:String {maxLength: 4}
    string SalesOrganization?;
    @constraint:String {maxLength: 2}
    string Language?;
    string? SalesOrganizationName?;
    A_SalesOrganization to_SalesOrganization?;
};

public type CollectionOfA_SalesOrganization record {
    count __count?;
    A_SalesOrganization[] results?;
};

public type A_SalesOrganizationOrderByOptions ("SalesOrganization"|"SalesOrganization desc"|"SalesOrganizationCurrency"|"SalesOrganizationCurrency desc"|"CompanyCode"|"CompanyCode desc"|"IntercompanyBillingCustomer"|"IntercompanyBillingCustomer desc")[];

# Represents the Queries record for the operation: listA_SalesOrganizations
public type ListA_SalesOrganizationsQueries record {
    # Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    int \$top?;
    # Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    string \$filter?;
    # Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    A_SalesOrganizationOrderByOptions \$orderby?;
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    A_SalesOrganizationExpandOptions \$expand?;
    # Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    "allpages"|"none" \$inlinecount?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    A_SalesOrganizationSelectOptions \$select?;
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

# Represents the Queries record for the operation: listTextsOfA_SalesOrganization
public type ListTextsOfA_SalesOrganizationQueries record {
    # Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    int \$top?;
    # Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    string \$filter?;
    # Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    A_SalesOrganizationTextOrderByOptions \$orderby?;
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    A_SalesOrganizationTextExpandOptions \$expand?;
    # Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    "allpages"|"none" \$inlinecount?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    A_SalesOrganizationTextSelectOptions \$select?;
};

public type A_SalesOrganizationTextOrderByOptions ("SalesOrganization"|"SalesOrganization desc"|"Language"|"Language desc"|"SalesOrganizationName"|"SalesOrganizationName desc")[];

public type A_SalesOrganization record {
    @constraint:String {maxLength: 4}
    string SalesOrganization?;
    # Statistics currency
    string? SalesOrganizationCurrency?;
    # Company code of the sales organization
    string? CompanyCode?;
    # Customer Number for Intercompany Billing
    string? IntercompanyBillingCustomer?;
    A_SalesOrganization_to_Text to_Text?;
};

public type A_SalesOrganizationSelectOptions ("SalesOrganization"|"SalesOrganizationCurrency"|"CompanyCode"|"IntercompanyBillingCustomer"|"to_Text")[];
