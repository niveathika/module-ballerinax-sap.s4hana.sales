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

import ballerina/http;
import ballerina/os;

boolean isBalBuild = os:getEnv("IS_BAL_BUILD") == "true";
string certPathPostFix = isBalBuild ? "../" : "/home/ballerina/ballerina/";

listener http:Listener ep0 = new (9090,
    secureSocket = {
        key: {
            certFile: certPathPostFix + "resources/public.crt",
            keyFile: certPathPostFix + "resources/private.key"
        }
    }
);

service /sap/opu/odata4/sap/api_salesorder/srvd_a2x/sap/salesorder/'0001 on ep0 {

    resource function head .() returns http:Response {
        http:Response res = new;
        res.statusCode = 200;
        res.setHeader("X-CSRF-TOKEN", "SAP-InfoRecord-Process");
        return res;
    }

    # Get entities from SalesOrder
    #
    # + \$top - Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)
    # + \$skip - Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)
    # + \$filter - Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)
    # + \$count - Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)
    # + \$orderby - Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)
    # + \$select - Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)
    # + \$expand - Expand related entities, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)
    # + return - returns can be any of following types 
    # http:Ok (Retrieved entities)
    # http:Response (Error)
    resource function get SalesOrder(int? \$top, int? \$skip, string? \$filter, boolean? \$count, SalesOrderOrderByOptions? \$orderby, SalesOrderSelectOptions? \$select, SalesOrderExpandOptions? \$expand) returns CollectionOfSalesOrder|http:Response {
        return {
            value: [
                {
                    SalesOrder: "0000000001"
                }
            ]
        };
    }

    # Add new entity to SalesOrder
    #
    # + payload - New entity 
    # + return - returns can be any of following types 
    # http:Created (Created entity)
    # http:Response (Error)
    resource function post SalesOrder(@http:Payload CreateSalesOrder payload) returns SalesOrder|http:Response {
        http:Response res = new;
        res.statusCode = 400;
        return res;
    }
}
