Instance: JP-Organization-eReferral-departmentOfIssuer-Example
InstanceOf: Organization
Usage: #example
Description: "発行の診療科　 Organizationリソースのインスタンス例（診療科コードがある例）"

* meta.profile = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Organization_eReferral_departmentOfIssuer"
* type[0] = http://terminology.hl7.org/CodeSystem/organization-type#dept
* type[+] = urn:oid:1.2.392.100495.20.2.51#01 "内科"
* name = "内科"
* partOf = Reference(JP-Organization-eReferral-issuer-Example)