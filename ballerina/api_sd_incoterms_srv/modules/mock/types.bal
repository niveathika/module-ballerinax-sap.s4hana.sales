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

public type A_IncotermsClassificationExpandOptions ("to_IncotermsClassificationText")[];

public type A_IncotermsClassificationOrderByOptions ("IncotermsClassification"|"IncotermsClassification desc"|"LocationIsMandatory"|"LocationIsMandatory desc")[];

public type CollectionOfA_IncotermsClassificationWrapper record {
    CollectionOfA_IncotermsClassification d?;
};

public type A_IncotermsClassificationSelectOptions ("IncotermsClassification"|"LocationIsMandatory"|"to_IncotermsClassificationText")[];

public type CollectionOfA_IncotermsClassification record {
    count __count?;
    A_IncotermsClassification[] results?;
};

public type A_IncotermsClassificationText record {
    # Incoterms (Part 1)
    @constraint:String {maxLength: 3}
    string IncotermsClassification?;
    @constraint:String {maxLength: 2}
    string Language?;
    string? IncotermsClassificationName?;
};

public type A_IncotermsClassification_to_IncotermsClassificationText record {
    A_IncotermsClassificationText[] results?;
};

public type A_IncotermsClassification record {
    # Incoterms (Part 1)
    @constraint:String {maxLength: 3}
    string IncotermsClassification?;
    # Location is mandatory
    boolean? LocationIsMandatory?;
    A_IncotermsClassification_to_IncotermsClassificationText to_IncotermsClassificationText?;
};

# The number of entities in the collection. Available when using the [$inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67) query option.
public type count string;
