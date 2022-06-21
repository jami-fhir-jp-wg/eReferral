Instance: JP-Practitioner-ePreData-author-Example
InstanceOf: Practitioner
Usage: #example
Description: "処方した医師 Practitionerリソースのインスタンス例（医師免許番号と麻薬施用者番号あり）"
* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Practitioner_ePrescriptionData_author"
* identifier.system = "urn:oid:1.2.392.100495.20.3.41.11311234567"
* identifier.value = "123"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].text = "神奈川　花子"
* name[=].family = "神奈川"
* name[=].given = "花子"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].text = "カナガワ　ハナコ"
* name[=].family = "カナガワ"
* name[=].given = "ハナコ"
* qualification[0].identifier.system = "urn:oid:1.2.392.100495.20.3.31"
* qualification[=].identifier.value = "123456"
* qualification[=].code = $practitioner-certificate-category#MedicalDoctorLicense
* qualification[+].identifier.system = "urn:oid:1.2.392.100495.20.3.32.113"
* qualification[=].identifier.value = "4-321"
* qualification[=].code = $practitioner-certificate-category#NarcoticsPractitioner