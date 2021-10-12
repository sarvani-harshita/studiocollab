{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_5vx360",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1c3my5a",
                "sourceRef": "StartEvent_1aj67gl",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_z10sze",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_gj7sww",
                "sourceRef": "ServiceTask_5vx360",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_1vyzpu1",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_qixmgo",
                "sourceRef": "ServiceTask_z10sze",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_h6wxa5",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_vev9le",
                "sourceRef": "ServiceTask_1vyzpu1",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_52b7us",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1fp6lwp",
                "sourceRef": "UserTask_h6wxa5",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ExclusiveGateway_gbbhca",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_z0zeqq",
                "sourceRef": "ServiceTask_52b7us",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_i4z666",
                "businessProp": {"condition": "status==1"},
                "name": "Approve",
                "id": "SequenceFlow_126m37q",
                "sourceRef": "ExclusiveGateway_gbbhca",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_rtsjx8",
                "businessProp": {"condition": "status==0"},
                "name": "Reject",
                "id": "SequenceFlow_n0j0y9",
                "sourceRef": "ExclusiveGateway_gbbhca",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_532xnu",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_zi0xxq",
                "sourceRef": "UserTask_i4z666",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_532xnu",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_c40ofe",
                "sourceRef": "UserTask_rtsjx8",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": [
                "SequenceFlow_zi0xxq",
                "SequenceFlow_c40ofe"
            ],
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_532xnu",
            "type": "bpmn:endEvent"
        },
        "exclusiveGateway": {
            "outgoing": [
                "SequenceFlow_126m37q",
                "SequenceFlow_n0j0y9"
            ],
            "incoming": "SequenceFlow_z0zeqq",
            "businessProp": {},
            "name": "Claim Status",
            "id": "ExclusiveGateway_gbbhca",
            "type": "bpmn:exclusiveGateway"
        },
        "serviceTask": [
            {
                "outgoing": "SequenceFlow_gj7sww",
                "incoming": "SequenceFlow_1c3my5a",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "GET",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getAllEmp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getAllEmp\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimdescription\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getClaimById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getClaimById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "getEmpById",
                            "getAllEmp",
                            "insertClaim",
                            "getClaimById",
                            "updateClaimStatus"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/ExpenseData/getEmpById\"",
                    "parameters-body": [],
                    "data-type": 2,
                    "post-processor": "\t\r\n$pm.addMemVariable(\"empfirstname\", employeedetails.data.results[0].firstname);\r\n\r\n$pm.addMemVariable(\"empemail\", employeedetails.data.results[0].email);",
                    "url": "\"https://localhost:3030/rest/webservices/context/application/ExpenseData/getEmpById\"",
                    "datasourceType": 0,
                    "proxy": "false",
                    "port": "",
                    "response": "employeedetails",
                    "data-source": "{\"name\":\"ExpenseData\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"a690b95b-05e4-422f-bc12-420f5891c7bf\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"17bccd23-fa92-48ee-a34a-6c7ea6830767\",\"createdOn\":\"2021-10-06T10:08:20.228-04:00\",\"modifiedOn\":\"2021-10-06T10:08:20.228-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                    "parameters": [
                        {
                            "paramLocation": 2,
                            "type": "Query",
                            "value": "empid",
                            "key": "empid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "limit",
                            "allowOverride": true,
                            "advance": "limit"
                        },
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "offset",
                            "allowOverride": true,
                            "advance": "offset"
                        }
                    ]
                },
                "name": "Employee Details",
                "id": "ServiceTask_5vx360",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_vev9le",
                "incoming": "SequenceFlow_qixmgo",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "GET",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getAllEmp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getAllEmp\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimdescription\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getClaimById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getClaimById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "getEmpById",
                            "getAllEmp",
                            "insertClaim",
                            "getClaimById",
                            "updateClaimStatus"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/ExpenseData/getEmpById\"",
                    "parameters-body": [],
                    "data-type": 2,
                    "post-processor": "// $pm.addMemVariable(\"toname\", empdetresp.data.results[0].firstname);\r\n $pm.addMemVariable(\"toname\", \"admin\");",
                    "url": "\"https://localhost:3030/rest/webservices/context/application/ExpenseData/getEmpById\"",
                    "datasourceType": 0,
                    "proxy": "false",
                    "port": "",
                    "response": "empdetresp",
                    "data-source": "{\"name\":\"ExpenseData\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"a690b95b-05e4-422f-bc12-420f5891c7bf\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"17bccd23-fa92-48ee-a34a-6c7ea6830767\",\"createdOn\":\"2021-10-06T10:08:20.228-04:00\",\"modifiedOn\":\"2021-10-06T10:08:20.228-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                    "parameters": [
                        {
                            "paramLocation": 2,
                            "type": "Query",
                            "value": "\temployeedetails.data.results[0].managerid",
                            "key": "empid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "limit",
                            "allowOverride": true,
                            "advance": "limit"
                        },
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "offset",
                            "allowOverride": true,
                            "advance": "offset"
                        }
                    ]
                },
                "name": "Get Manager Details",
                "id": "ServiceTask_1vyzpu1",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_z0zeqq",
                "incoming": "SequenceFlow_1fp6lwp",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "PUT",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getAllEmp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getAllEmp\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimdescription\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getClaimById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getClaimById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "getEmpById",
                            "getAllEmp",
                            "insertClaim",
                            "getClaimById",
                            "updateClaimStatus"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/ExpenseData/updateClaimStatus\"",
                    "parameters-body": [{
                        "paramLocation": 1,
                        "value": "status",
                        "key": "claimstatus",
                        "allowOverride": true
                    }],
                    "data-type": 2,
                    "url": "\"https://localhost:3030/rest/webservices/context/application/ExpenseData/updateClaimStatus\"",
                    "datasourceType": 0,
                    "proxy": "false",
                    "bodyFormData": [{
                        "paramLocation": 1,
                        "value": "status",
                        "key": "claimstatus",
                        "allowOverride": true
                    }],
                    "port": "",
                    "response": "updatestatus",
                    "data-source": "{\"name\":\"ExpenseData\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"a690b95b-05e4-422f-bc12-420f5891c7bf\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"17bccd23-fa92-48ee-a34a-6c7ea6830767\",\"createdOn\":\"2021-10-06T10:08:20.228-04:00\",\"modifiedOn\":\"2021-10-06T10:08:20.228-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                    "parameters": [{
                        "paramLocation": 1,
                        "type": "Query",
                        "value": "insertresp.data.System_Generated_Properties.claimid",
                        "key": "claimid",
                        "allowOverride": true
                    }]
                },
                "name": "Update Status",
                "id": "ServiceTask_52b7us",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_qixmgo",
                "incoming": "SequenceFlow_gj7sww",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "POST",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getAllEmp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getAllEmp\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimdescription\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getClaimById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getClaimById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "getEmpById",
                            "getAllEmp",
                            "insertClaim",
                            "getClaimById",
                            "updateClaimStatus"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/ExpenseData/insertClaim\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "employeedetails.data.results[0].managerid",
                            "key": "managerid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "empid",
                            "key": "empid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "claimamount",
                            "key": "claimamount",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "\"0\"",
                            "key": "claimstatus",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "claimreason",
                            "key": "claimdescription",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "url": "\"https://localhost:3030/rest/webservices/context/application/ExpenseData/insertClaim\"",
                    "datasourceType": 0,
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "employeedetails.data.results[0].managerid",
                            "key": "managerid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "empid",
                            "key": "empid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "claimamount",
                            "key": "claimamount",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "\"0\"",
                            "key": "claimstatus",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "",
                            "value": "claimreason",
                            "key": "claimdescription",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "insertresp",
                    "data-source": "{\"name\":\"ExpenseData\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"a690b95b-05e4-422f-bc12-420f5891c7bf\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"17bccd23-fa92-48ee-a34a-6c7ea6830767\",\"createdOn\":\"2021-10-06T10:08:20.228-04:00\",\"modifiedOn\":\"2021-10-06T10:08:20.228-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"claimdescription\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "Insert Details",
                "id": "ServiceTask_z10sze",
                "type": "bpmn:serviceTask",
                "events": []
            }
        ],
        "startEvent": {
            "outgoing": "SequenceFlow_1c3my5a",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": [
                    {
                        "ref": "empid",
                        "regex": "",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "claimamount",
                        "regex": "",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "claimreason",
                        "regex": "",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }
                ]
            },
            "name": "Start Claim Process",
            "id": "StartEvent_1aj67gl",
            "type": "bpmn:startEvent"
        },
        "id": "Process_clx72e",
        "userTask": [
            {
                "outgoing": "SequenceFlow_1fp6lwp",
                "incoming": "SequenceFlow_vev9le",
                "businessProp": {
                    "formType": "Existing",
                    "fromUser": "empfirstname",
                    "form-variables": [
                        {
                            "ref": "claimamount",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "claimreason",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "status",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "empemail",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "empfirstname",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        }
                    ],
                    "form-url-type": "\"absolute\"",
                    "body-replace-strings": [],
                    "form-url": "\"https://localhost:3030/rest/projects/a690b95b-05e4-422f-bc12-420f5891c7bf/files/5d4f51d8-164b-4f5d-8919-e79f5c68cee7/preview\"",
                    "assignee-type": "Expression",
                    "existingForm": "{\"name\":\"ClaimD.vm\",\"type\":1,\"parentName\":\"UI Models\",\"location\":\"/ExpenseClaim/UI Models\",\"properties\":{\"isWorkspaceReady\":true,\"visualDistFolderId\":\"b933e5e4-5665-452f-93f7-9d943d12171b\",\"appGen\":true},\"meta\":\"{}\",\"size\":635,\"errorMessage\":null,\"parentId\":\"d9fdf234-0e15-4686-97fd-cd310101590a\",\"projectId\":\"a690b95b-05e4-422f-bc12-420f5891c7bf\",\"referenceId\":null,\"namespaceId\":\"\",\"content\":null,\"id\":\"5d4f51d8-164b-4f5d-8919-e79f5c68cee7\",\"createdOn\":\"2021-10-06T10:20:22.077-04:00\",\"modifiedOn\":\"2021-10-06T10:37:23.035-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsString\":\"\",\"contentAsBytes\":null,\"buildProgress\":false}",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "{\"id\":\"5d4f51d8-164b-4f5d-8919-e79f5c68cee7\",\"projectId\":\"a690b95b-05e4-422f-bc12-420f5891c7bf\",\"name\":\"ClaimD.vm\",\"fileLocation\":\"/ExpenseClaim/UI Models\"}",
                    "notify-type": "With Action",
                    "assignee-exp": "toname"
                },
                "name": "Notify Manager",
                "id": "UserTask_h6wxa5",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_zi0xxq",
                "incoming": "SequenceFlow_126m37q",
                "businessProp": {
                    "email-type": "text/html",
                    "attribute-references": [],
                    "email-body": "Hi%20User,%0D%0A%0D%0A%20%0D%0A%0D%0AYour%20expense%20claim%20with%20ID%20-%20claimid%20has%20been%20approved.%0D%0A%0D%0A%20%0D%0A%0D%0ARegards,%0D%0A%0D%0Amanager",
                    "fromUser": "\"Manager\"",
                    "form-variables": [],
                    "subject": "\"Claim Approved\"",
                    "body-replace-strings": [
                        {
                            "string": "user",
                            "value": "empfirstname"
                        },
                        {
                            "string": "manager",
                            "value": "empdetresp.data.results[0].firstname"
                        },
                        {
                            "string": "claimid",
                            "value": "insertresp.data.System_Generated_Properties.claimid"
                        }
                    ],
                    "notify-type": "Message Only",
                    "assignee-type": "Expression",
                    "assignee-exp": "empfirstname"
                },
                "name": "Notify Employee Approve",
                "id": "UserTask_i4z666",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_c40ofe",
                "incoming": "SequenceFlow_n0j0y9",
                "businessProp": {
                    "email-type": "text/html",
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Employee",
                        "actualData": "{\"name\":\"Employee.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/ExpenseClaim/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"a690b95b-05e4-422f-bc12-420f5891c7bf\",\"referenceId\":\"a254e7c6-74bb-4d19-8c7a-316459f353f0\",\"namespaceId\":null,\"content\":null,\"id\":\"a452dcae-1717-4101-8eae-738a5a64b495\",\"createdOn\":\"2021-10-06T10:27:39.840-04:00\",\"modifiedOn\":\"2021-10-06T10:27:39.840-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsBytes\":null,\"contentAsString\":\"\",\"buildProgress\":false}"
                    },
                    "attribute-references": [],
                    "email-body": "Hi%20User,%0D%0A%0D%0A%20%0D%0A%0D%0AYour%20expense%20claim%20with%20ID%20-%20claimid%20has%20been%20rejected.%0D%0A%0D%0A%20%0D%0A%0D%0ARegards,%0D%0A%0D%0Amanager",
                    "fromUser": "\"Manager\"",
                    "form-variables": [],
                    "subject": "\"Claim Rejected\"",
                    "body-replace-strings": [
                        {
                            "string": "user",
                            "value": "empfirstname"
                        },
                        {
                            "string": "manager",
                            "value": "empdetresp.data.results[0].firstname"
                        },
                        {
                            "string": "claimid",
                            "value": "insertresp.data.System_Generated_Properties.claimid"
                        }
                    ],
                    "notify-type": "Message Only",
                    "assignee-type": "Role"
                },
                "name": "Notify Employee Reject",
                "id": "UserTask_rtsjx8",
                "type": "bpmn:userTask",
                "events": []
            }
        ]
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_clx72e",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_532xnu",
                    "Bounds": {
                        "cx": 1052.0000164349865,
                        "cy": 292.6015666802722,
                        "x": 1034.0000164349865,
                        "width": 36,
                        "y": 263.0000041802722,
                        "height": 59.203125
                    },
                    "id": "EndEvent_532xnu_ve"
                },
                {
                    "bpmnElement": "ExclusiveGateway_gbbhca",
                    "Bounds": {
                        "cx": 653.1015724976852,
                        "cy": 269.3984415690102,
                        "x": 629.0000099976852,
                        "width": 68.171875,
                        "y": 256.0000040690102,
                        "height": 73.203125
                    },
                    "id": "ExclusiveGateway_gbbhca_ve"
                },
                {
                    "bpmnElement": "ServiceTask_5vx360",
                    "Bounds": {
                        "cx": 193.99998955758366,
                        "cy": 93.00001080601754,
                        "x": 117.0199938300446,
                        "width": 153.95999145507812,
                        "y": 54.8350098904902,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_5vx360_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1vyzpu1",
                    "Bounds": {
                        "cx": 219.99999909432682,
                        "cy": 413.9999975737858,
                        "x": 143.02000336678776,
                        "width": 153.95999145507812,
                        "y": 375.83499665825843,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1vyzpu1_ve"
                },
                {
                    "bpmnElement": "ServiceTask_52b7us",
                    "Bounds": {
                        "cx": 440.99998955758366,
                        "cy": 281.00001080601754,
                        "x": 364.0199938300446,
                        "width": 153.95999145507812,
                        "y": 242.8350098904902,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_52b7us_ve"
                },
                {
                    "bpmnElement": "ServiceTask_z10sze",
                    "Bounds": {
                        "cx": 148.00000105828053,
                        "cy": 303.9999963318555,
                        "x": 71.02000533074147,
                        "width": 153.95999145507812,
                        "y": 265.8349954163282,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_z10sze_ve"
                },
                {
                    "bpmnElement": "StartEvent_1aj67gl",
                    "Bounds": {
                        "cx": 46.109375460942545,
                        "cy": 104.92968869730822,
                        "x": 29.000000460942545,
                        "width": 106.0625,
                        "y": 75.32812619730822,
                        "height": 59.203125
                    },
                    "id": "StartEvent_1aj67gl_ve"
                },
                {
                    "bpmnElement": "UserTask_h6wxa5",
                    "Bounds": {
                        "cx": 440.99998955758366,
                        "cy": 413.9999975340496,
                        "x": 364.0199938300446,
                        "width": 153.95999145507812,
                        "y": 375.83499661852227,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_h6wxa5_ve"
                },
                {
                    "bpmnElement": "UserTask_i4z666",
                    "Bounds": {
                        "cx": 814.0000000480011,
                        "cy": 164.9999999182354,
                        "x": 737.020004320462,
                        "width": 153.95999145507812,
                        "y": 126.83499900270806,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_i4z666_ve"
                },
                {
                    "bpmnElement": "UserTask_rtsjx8",
                    "Bounds": {
                        "cx": 828.0000200751617,
                        "cy": 391.9999975340496,
                        "x": 751.0200243476227,
                        "width": 153.95999145507812,
                        "y": 353.83499661852227,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_rtsjx8_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "65.00000046094254",
                            "y": "93.32812619730822"
                        },
                        {
                            "x": "117.0199938300446",
                            "y": "93.00000989049019"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1c3my5a",
                    "id": "SequenceFlow_1c3my5a_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "193.99999383004462",
                            "y": "131.16500989049018"
                        },
                        {
                            "x": "193.99999383004462",
                            "y": "198.50000265340918"
                        },
                        {
                            "x": "148.0000053307415",
                            "y": "198.50000265340918"
                        },
                        {
                            "x": "148.0000053307415",
                            "y": "265.8349954163282"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_gj7sww",
                    "id": "SequenceFlow_gj7sww_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "148.0000053307415",
                            "y": "342.16499541632817"
                        },
                        {
                            "x": "148.0000053307415",
                            "y": "358.9999960372933"
                        },
                        {
                            "x": "220.00000336678778",
                            "y": "358.9999960372933"
                        },
                        {
                            "x": "220.00000336678778",
                            "y": "375.83499665825843"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_qixmgo",
                    "id": "SequenceFlow_qixmgo_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "296.98000336678774",
                            "y": "413.99999665825845"
                        },
                        {
                            "x": "364.0199938300446",
                            "y": "413.9999966185223"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_vev9le",
                    "id": "SequenceFlow_vev9le_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "440.9999938300446",
                            "y": "375.83499661852227"
                        },
                        {
                            "x": "440.9999938300446",
                            "y": "319.1650098904902"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1fp6lwp",
                    "id": "SequenceFlow_1fp6lwp_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "517.9799938300446",
                            "y": "281.0000098904902"
                        },
                        {
                            "x": "629.0000099976852",
                            "y": "281.0000040690102"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_z0zeqq",
                    "id": "SequenceFlow_z0zeqq_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "679.0000099976852",
                            "y": "281.0000040690102"
                        },
                        {
                            "x": "708.0100071590737",
                            "y": "281.0000040690102"
                        },
                        {
                            "x": "708.0100071590737",
                            "y": "164.99999900270805"
                        },
                        {
                            "x": "737.020004320462",
                            "y": "164.99999900270805"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_126m37q",
                    "id": "SequenceFlow_126m37q_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 728,
                        "cy": 200,
                        "x": 688,
                        "width": 80,
                        "y": 188,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "679.0000099976852",
                            "y": "281.0000040690102"
                        },
                        {
                            "x": "715.010017172654",
                            "y": "281.0000040690102"
                        },
                        {
                            "x": "715.010017172654",
                            "y": "391.9999966185223"
                        },
                        {
                            "x": "751.0200243476227",
                            "y": "391.9999966185223"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_n0j0y9",
                    "id": "SequenceFlow_n0j0y9_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 735,
                        "cy": 314,
                        "x": 695,
                        "width": 80,
                        "y": 302,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "890.9800043204621",
                            "y": "164.99999900270805"
                        },
                        {
                            "x": "962.4900103777243",
                            "y": "164.99999900270805"
                        },
                        {
                            "x": "962.4900103777243",
                            "y": "281.0000041802722"
                        },
                        {
                            "x": "1034.0000164349865",
                            "y": "281.0000041802722"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_zi0xxq",
                    "id": "SequenceFlow_zi0xxq_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "904.9800243476227",
                            "y": "391.9999966185223"
                        },
                        {
                            "x": "969.4900203913046",
                            "y": "391.9999966185223"
                        },
                        {
                            "x": "969.4900203913046",
                            "y": "281.0000041802722"
                        },
                        {
                            "x": "1034.0000164349865",
                            "y": "281.0000041802722"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_c40ofe",
                    "id": "SequenceFlow_c40ofe_ve"
                }
            ]
        },
        "id": "Process_clx72e_ve"
    },
    "collaboration": {}
}