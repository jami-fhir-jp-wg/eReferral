
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:183556e5-452d-4392-8802-b6813f7c3d85"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:fa12de45-ff24-4c59-950a-bdf2e350ceea"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:1a3b88ec-59a3-42be-ba54-af3bfd30f68a"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:65a26f24-b166-46cf-85e8-b667d8105e8b"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:e4b30362-50fa-4aa5-9743-e280274ac9d5"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:d1802d7b-33bd-486a-9fc8-e97b0e97c6ef"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:ee0baaf9-9613-4411-90ea-f74c8fc881ef"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:a5a7919d-1bb5-4784-afec-1a614744de03"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:8d1a3e2b-87bf-44c9-b419-2dd19b2f47e1"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:5742210d-5a74-4dcc-ad8d-55a4b710da67"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:52392127-b84d-4f86-9c55-6f61ff97d902"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:ed969a76-7d65-47da-ad5e-0700d4369594"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:f93f27bf-61ff-46c8-9efd-b302d9222d3d"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:8f5fb291-8865-4a6e-9404-ea250367d5ed"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:d58d8870-ee2c-4f11-8750-b49734ae8f85"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:13de6ab0-7865-497f-8e6b-c71d29857b27"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:c189d6fb-b12f-431e-9358-f7e8ebeb2e96"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:9132f90a-69b0-4670-920a-07162331b3a2"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:94411438-c060-4633-aad9-3305f03b2329"
* entry[=].resource = ccourseReferralExample01Inline

