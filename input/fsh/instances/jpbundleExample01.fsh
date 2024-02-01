
Instance: BundleReferralExample01
InstanceOf: JP_Bundle_eReferral
Usage: #example

Description: "■ 診療情報提供書　全体 Bundleリソース"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:830ec2d1-67a7-427e-b6fe-ad0eb29da7fb"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:3e6a0ba2-d781-4fd7-9de6-e077b690daed"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:f11535c2-043d-43b6-bf99-b8298ea3c946"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:a44951be-cdaa-4c53-9e35-6be013da5441"
* entry[=].resource = referralToOrganizationExample01Inline

/*
* entry[+].fullUrl = "urn:uuid:9f92f003-69e6-4983-85eb-fb49a3110b59"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:2e979bec-720b-4e36-8eb9-ebe661172af3"
* entry[=].resource = referralFromOrganizationDeptExample01Inline
*/

* entry[+].fullUrl = "urn:uuid:3acc3dc7-c79b-41f1-8eea-ac4de9b664b8"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:6a31db8e-109d-4349-b0cf-095131c3307a"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:a9358f3e-c743-4998-aa89-1be54c31b432"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5eab50b2-6741-467c-a2fd-a4adab1f835f"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5c650562-f4e4-40b3-87c6-e9a0376be7a8"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:a28198b9-6a23-4677-ba2e-5eb3e17d9792"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:711b07ae-d20b-40b0-9aa9-c7f1981409e6"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5a1aae74-f720-415a-ba15-a6c8b5d4c5a1"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:481835ef-0891-45de-a006-087954ab6b7c"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:a6e4fc73-a749-4583-94a7-18e4241b4c75"
* entry[=].resource = ccourseReferralExample01Inline

