// Condition_eCS
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: cc1ReferralExample01
InstanceOf: JP_Condition_eCS
Usage: #example
  
Description: "Conditionリソース　（診療情報提供書　主訴テキスト　上腹部痛）"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed

 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "上腹部痛"

* subject.reference = "Patient/jppatientExample01"

// 2022-06-09 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-06-09"


Instance: cc2ReferralExample01
InstanceOf: JP_Condition_eCS
Usage: #example
  
Description: "Conditionリソース　（診療情報提供書　主訴テキスト　腰痛）"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "腰痛"

* subject.reference = "Patient/jppatientExample01"

// 2022-05 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-05"


