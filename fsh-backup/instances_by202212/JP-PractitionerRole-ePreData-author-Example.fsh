Instance: JP-PractitionerRole-eReferral-author-Example
InstanceOf: PractitionerRole
Usage: #example
Description: "処方した医師の役割 PractitionerRoleリソースのインスタンス例"

* meta.profile = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_PractitionerRole_eReferral_author"
* identifier.system = "http://exapmleHospital.jp/IdSystem/hisUserRoleId"
* identifier.value = "702"
* practitioner = Reference(JP-Practitioner-eReferral-author-Example)
* organization = Reference(JP-Organization-eReferral-issuer-Example)
* code = $JP_PractitionerRole_CS#JPR10000  "医師"