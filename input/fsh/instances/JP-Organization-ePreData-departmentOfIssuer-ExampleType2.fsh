Instance: JP-Organization-eReferral-departmentOfIssuer-ExampleType2
InstanceOf: Organization
Usage: #example
Description: "発行の診療科　 Organizationリソースのインスタンス例（診療科コードがない例）"

* meta.profile = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Organization_eReferral_departmentOfIssuer"
* type[0] = http://terminology.hl7.org/CodeSystem/organization-type#dept
* name = "内科"
* partOf = Reference(JP-Organization-eReferral-issuer-Example)