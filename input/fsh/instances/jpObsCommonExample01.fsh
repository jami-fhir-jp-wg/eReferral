// ObservationCommonリソース

Instance: psobsCommonExample01
InstanceOf: JP_Observation_Common
Usage: #example
  
Description: "Observationリソース　（診療情報提供書　腹部所見テキスト）"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837"
* status = #final

* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#exam "身体検査・観察"

* code.text = "腹部所見"

* subject.reference = "Patient/jppatientExample01"

* valueString = "上腹部圧痛あり、その他特に所見なし。"


Instance: obsCommonExample01
InstanceOf: JP_Observation_Common
Usage: #example
  
Description: "Observationリソース　（診療情報提供書　現症　腹部所見テキスト）"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837"
* status = #final

* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#exam "身体検査・観察"

* code.text = "腹部所見"

* subject.reference = "Patient/jppatientExample01"

* valueString = "上腹部圧痛あり、その他特に所見なし。"



