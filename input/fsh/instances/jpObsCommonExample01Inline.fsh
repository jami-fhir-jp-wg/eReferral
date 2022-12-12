// ObservationCommonリソース

Instance: psobsCommonExample01Inline
InstanceOf: JP_Observation_Common
Usage: #inline

Description: "ObservationCommon検査結果　現症例"

* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837"
* status = #final

* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#exam "身体検査・観察"

* code.text = "腹部所見"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* valueString = "上腹部圧痛あり、その他特に所見なし。"


Instance: obsCommonExample01Inline
InstanceOf: JP_Observation_Common
Usage: #inline

Description: "ObservationCommon検査結果　例"

* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837"
* status = #final

* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#exam "身体検査・観察"

* code.text = "腹部所見"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* valueString = "上腹部圧痛あり、グル音亢進。"



