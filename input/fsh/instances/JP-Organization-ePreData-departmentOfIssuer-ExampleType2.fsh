Instance: JP-Organization-ePreData-departmentOfIssuer-ExampleType2
InstanceOf: Organization
Usage: #example
Description: "処方発行の診療科　 Organizationリソースのインスタンス例（診療科コードがない例）"

* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Organization_ePrescriptionData_departmentOfIssuer"
* type[0] = http://terminology.hl7.org/CodeSystem/organization-type#dept
* name = "内科"
* partOf = Reference(JP-Organization-ePreData-issuer-Example)