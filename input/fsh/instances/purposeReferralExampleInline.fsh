// Encounter_eCS
//以下省略（診療情報提供書）
Instance: purposeReferralExample01Inline
InstanceOf: JP_Encounter_eCS
Usage: #inline

Description: "encounterReferralExample01 診療情報提供書での紹介目的　例　腹痛精査お願い"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Encounter_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837"
* status = #finished

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "外来"

* reasonCode[+].text = "腹痛精査お願いします。"




Instance: encounterReferralExample01Inline
InstanceOf: JP_Encounter_eCS
Usage: #inline

Description: "encounterReferralExample01 外来受診歴　例"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Encounter_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192844"
* status = #finished

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "外来"

* classHistory[+].class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* classHistory[=].class.code = #AMB
* classHistory[=].class.display = "外来"
* classHistory[=].period.start = "2020-08-20"
