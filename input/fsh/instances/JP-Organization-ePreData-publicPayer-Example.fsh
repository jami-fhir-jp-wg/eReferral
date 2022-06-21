Instance: JP-Organization-ePreData-publicPayer-Example
InstanceOf: Organization
Usage: #example
Description: "公費負担者組織（自治体） Organizationリソースのインスタンス例"
* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Organization_ePrescriptionData_coveragePayer"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.71"
* identifier[0].value = "01234567"
* type.coding = $organization-type#other
* name = "神奈川県横浜市"