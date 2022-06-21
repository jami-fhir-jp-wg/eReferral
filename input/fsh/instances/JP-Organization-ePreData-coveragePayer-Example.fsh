Instance: JP-Organization-ePreData-coveragePayer-Example
InstanceOf: Organization
Usage: #example
Description: "健康保険者　 Organizationリソースのインスタンス例"

* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Organization_ePrescriptionData_coveragePayer"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.61"
* identifier[0].value = "06123456"
* type.coding = $organization-type#ins
* name = "サンプル健康保険組合"