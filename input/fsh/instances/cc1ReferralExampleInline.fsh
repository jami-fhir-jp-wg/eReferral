// Condition_eClinicalSummary
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: cc1ReferralExample01Inline
InstanceOf: JP_Condition
Usage: #inline

Description: "conditionReferralExample01 診療情報提供書　主訴例"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "上腹部痛"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:e37cac19-9da9-492d-8810-0b7028b2e7e5"

// 2022-06-09 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-06-09"


Instance: cc2ReferralExample01Inline
InstanceOf: JP_Condition
Usage: #inline

Description: "conditionReferralExample01 診療情報提供書　主訴例"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "腰痛"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:e37cac19-9da9-492d-8810-0b7028b2e7e5"

// 2022-05 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-05"


