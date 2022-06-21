Instance: JP-MedReq-ePreData-Example-fukintouByTimes02
InstanceOf: MedicationRequest
Usage: #example
Description: "不均等投与の各回処方例　医薬品処方１件　MedicationRequestリソースのインスタンス例（２回目）"

* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_MedicationRequest_ePrescriptionData"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "7"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* status = #active
* intent = #order
* medicationCodeableConcept = urn:oid:1.2.392.200119.4.403.1#105271807 "プレドニン錠５ｍｇ"
* medicationCodeableConcept.text = "プレドニン５ｍｇ錠"
* subject = Reference(JP-Patient-ePreData-Example)
* authoredOn = "2020-08-21T12:28:17+09:00"
* note.text = "1日３回毎食後（４錠－２錠－１錠）の昼食後分"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_UsageDuration"
* dosageInstruction.extension.valueDuration = 7 'd' "日"
* dosageInstruction.text = "内服・経口・１日１回昼食後　１回２錠　７日分"
* dosageInstruction.timing.repeat.boundsDuration = 7 'd' "日"
* dosageInstruction.timing.code = urn:oid:1.2.392.200250.2.2.20.20#1011004000000000 "内服・経口・１日１回昼食後"
* dosageInstruction.route = $route-codes#PO "口"
* dosageInstruction.method = urn:oid:1.2.392.200250.2.2.20.30#1 "内服"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 2 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.quantity = 14 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 7 'd' "日"
* substitution.allowedCodeableConcept = urn:oid:1.2.392.100495.20.2.41#0 "変更可"