Instance: JP-Organization-ePreData-issuer-Example
InstanceOf: Organization
Usage: #example
Description: "処方発行の医療機関　 Organizationリソースのインスタンス例"
* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Organization_ePrescriptionData_issuer"
* extension[0].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo"
* extension[=].valueIdentifier.system = "urn:oid:1.2.392.100495.20.3.21"
* extension[=].valueIdentifier.value = "13"
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationCategory"
* extension[=].valueIdentifier.system = "urn:oid:1.2.392.100495.20.3.22"
* extension[=].valueIdentifier.value = "1"
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationNo"
* extension[=].valueIdentifier.system = "urn:oid:1.2.392.100495.20.3.23"
* extension[=].valueIdentifier.value = "1234567"
* identifier.system = "http://jpfhir.jp/fhir/Common/IdSystem/insurance-medical-institution-no"
* identifier.value = "1311234567"
* type.coding = $organization-type#prov
* name = "第一病院"
* telecom.system = #phone
* telecom.value = "0123-456-7890"
* address.text = "東京都千代田区千代田９－９－９"