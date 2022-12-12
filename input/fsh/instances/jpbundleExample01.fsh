
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:e359f070-0dc0-4a20-9d29-79fb9a6a353a"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:e37cac19-9da9-492d-8810-0b7028b2e7e5"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:aafd328b-f5f1-4d82-97df-1e3912b7b83a"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:30200dae-8f40-4b0c-ae7f-b3d749f84a14"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:9cc36963-69dd-45f2-91b9-fe3fb9d62ce7"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:54243f57-bf99-49bb-a550-2dff4f928762"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:57f9aa2c-9c23-4d70-a122-32ca6542f16e"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:5be4701a-03b6-4d7d-9e1b-32b181d58900"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:52e8eb12-accd-4fb5-b9db-6f4c81fec40d"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:5d9ed8ff-94c8-464b-b434-c43899d79aff"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:442dbf6f-f31c-4265-953a-1323c5edf71a"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:059cea4f-4222-43a1-9e66-41739059a8b6"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:0cf432f3-6c3d-4c2e-b18f-89605384148c"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:20cc10b3-549f-4e00-a6b1-59da4e3b8c14"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:2241aeed-47ab-473a-bd6f-fe393abcfbaf"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:2616fe00-0b89-4d40-9edf-c7223c793c45"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:82b1fa27-9c5c-4fab-98d6-6e4f566c6f27"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:d5f09fcc-c91b-48fd-9c02-ea4cbbf4f74e"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:2b5a4cf6-4300-4d26-8f5e-014ca2621c60"
* entry[=].resource = ccourseReferralExample01Inline

