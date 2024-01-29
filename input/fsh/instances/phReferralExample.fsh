// Condition_eCS
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: ph1ReferralExample01
InstanceOf: JP_Condition_eCS
Usage: #example
  
Description: "Conditionリソース　（診療情報提供書　既往歴テキスト　狭心症）"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "狭心症"

* subject.reference = "Patient/jppatientExample01"

// 2018 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2018"

* note.text = "2018年　狭心症　２ヶ月治療で軽快。"


Instance: ph2ReferralExample01
InstanceOf: JP_Condition_eCS
Usage: #example
  
Description: "Conditionリソース　（診療情報提供書　既往歴テキスト　左前腕骨折）"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "左前腕骨折"

* subject.reference = "Patient/jppatientExample01"

// 2019 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2019"

* note.text = "交通事故で左前腕骨折　３ヶ月ギプス固定。"




