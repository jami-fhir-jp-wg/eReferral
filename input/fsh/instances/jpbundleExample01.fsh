
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:7f662da9-3c59-4951-9cda-916a562dcc62"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:d52db995-9a73-4cbe-86d5-c9a3b3755bde"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:4259b6c7-5618-479a-a6fc-fe4b2366d840"
* entry[=].resource = encounterReferralExample01

* entry[+].fullUrl = "urn:uuid:2e17f692-7986-419f-a9e9-718c7c10f1e2"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:e37d5d95-bef1-4185-8d7d-06fac3cf2dfc"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:96330c47-4ec1-481a-a03e-0b5926fba412"
* entry[=].resource = referralFromOrganizationExample01

* entry[+].fullUrl = "urn:uuid:ca31b6a4-52f9-4013-b388-018a7854c687"
* entry[=].resource = referralToOrganizationExample01

* entry[+].fullUrl = "urn:uuid:659b260a-1bc1-4754-a735-0cdbe23d7eb8"
* entry[=].resource = referralToOrganizationDeptExample01

* entry[+].fullUrl = "urn:uuid:3b593058-dcad-482c-94da-dd12199dfc01"
* entry[=].resource = referralFromOrganizationDeptExample01

* entry[+].fullUrl = "urn:uuid:fe3478ee-43b8-4935-a680-308b5634e4ff"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:b876ddd6-6289-4e96-bbc0-369acb23bd83"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:599d70bd-c319-49f9-a0a7-945b6738df18"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:eea642f5-8c73-41ce-ae3b-b3a21aa72f63"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:8e8173d7-0ec7-4c6f-aa82-a181e9d5664a"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:1eaa473f-35e7-4b39-ab0d-bc5882decdae"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:62b234c3-93b1-460c-a38b-d0d431888a57"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:13642e90-21dc-416a-9b99-899a4d91f7e5"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:df7a9879-dc20-4a1b-ad23-3c9f8e42a5dc"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:967baae5-d4c5-495f-98de-7e58df70f633"
* entry[=].resource = ccourseReferralExample01

