Instance: JP-Organization-ePreData-departmentOfIssuer-Example
InstanceOf: Organization
Usage: #example
Description: "処方発行の診療科　 Organizationリソースのインスタンス例（診療科コードがある例）"

* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Organization_ePrescriptionData_departmentOfIssuer"
* type[0] = http://terminology.hl7.org/CodeSystem/organization-type#dept
* type[+] = urn:oid:1.2.392.100495.20.2.51#01 "内科"
* name = "内科"
* partOf = Reference(JP-Organization-ePreData-issuer-Example)