Instance: JP-MedReq-ePreData-Example-gaiyou02
InstanceOf: MedicationRequest
Usage: #example
Description: "外用塗布　処方例１件　MedicationRequestリソースのインスタンス例"

* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_MedicationRequest_ePrescriptionData"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "2"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* status = #active
* intent = #order
* medicationCodeableConcept = urn:oid:1.2.392.200119.4.403.1#106062101 "リンデロンＶＧクリーム ５ｇ"
* medicationCodeableConcept.text = "リンデロンＶＧクリーム５ｇ"
* subject = Reference(JP-Patient-ePreData-Example)
* authoredOn = "2020-08-21T12:28:17+09:00"
* dosageInstruction[0].text = "１日３回患部に塗布（膝）"
* dosageInstruction[=].timing.code = urn:oid:1.2.392.200250.2.2.20.20#2B73000000000000 "外用・塗布・１日３回"
* dosageInstruction[=].site = urn:oid:1.2.392.200250.2.2.20.32#950 "膝"
* dosageInstruction[=].route = $route-codes#AP "外用"
* dosageInstruction[=].method = urn:oid:1.2.392.200250.2.2.20.40#2B "塗布"
* dosageInstruction[+].text = "１日３回患部に塗布（すね）"
* dosageInstruction[=].timing.code = urn:oid:1.2.392.200250.2.2.20.20#2B73000000000000 "外用・塗布・１日３回"
* dosageInstruction[=].site = urn:oid:1.2.392.200250.2.2.20.32#970 "すね"
* dosageInstruction[=].route = $route-codes#AP "外用"
* dosageInstruction[=].method = urn:oid:1.2.392.200250.2.2.20.40#2B "塗布"
* dispenseRequest.quantity = 2 urn:oid:1.2.392.100495.20.2.101#HON "本"