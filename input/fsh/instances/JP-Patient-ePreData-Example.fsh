Instance: JP-Patient-ePreData-Example
InstanceOf: Patient
Usage: #example
Description: "処方対象の患者 Patientリソースのインスタンス例"
* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Patient_ePrescriptionData"
* identifier.system = "urn:oid:1.2.392.100495.20.3.51.11311234567"
* identifier.value = "00000010"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "東京　太郎"
* name[=].family = "東京"
* name[=].given = "太郎"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "トウキョウ　タロウ"
* name[=].family = "トウキョウ"
* name[=].given = "タロウ"
* gender = #male
* birthDate = "1920-02-11"
* address.text = "神奈川県横浜市港区１－２－３"
* address.postalCode = "123-4567"
* address.country = "JP"
