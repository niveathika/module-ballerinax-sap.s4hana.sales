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

public type A_DelivSchedSoldToPartyDetn record {
    # Supplier Number at Customer Location
    @constraint:String {maxLength: 17}
    string Supplier?;
    # Cust.-Specif. Descr. of Business Partner (Plant, Stor. Loc.)
    @constraint:String {maxLength: 30}
    string PartnerDescription?;
    @constraint:String {maxLength: 25}
    string UnloadingPointName?;
    string? SoldToParty?;
};

# The number of entities in the collection. Available when using the [$inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67) query option.
public type count string;

public type A_DelivSchedSoldToPartyDetnSelectOptions ("Supplier"|"PartnerDescription"|"UnloadingPointName"|"SoldToParty")[];

public type A_DelivSchedSoldToPartyDetnOrderByOptions ("Supplier"|"Supplier desc"|"PartnerDescription"|"PartnerDescription desc"|"UnloadingPointName"|"UnloadingPointName desc"|"SoldToParty"|"SoldToParty desc")[];

public type CollectionOfA_DelivSchedSoldToPartyDetn record {
    count __count?;
    A_DelivSchedSoldToPartyDetn[] results?;
};

public type CollectionOfA_DelivSchedSoldToPartyDetnWrapper record {
    CollectionOfA_DelivSchedSoldToPartyDetn d?;
};
