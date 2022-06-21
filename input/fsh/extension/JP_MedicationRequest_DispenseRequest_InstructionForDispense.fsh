// この拡張はJP-Coreで用意されている
Extension: JP_MedicationRequest_DispenseRequest_InstructionForDispense
Id: jp-medicationrequest-dispenserequest-instructionfordispense
Title: "JP Core MedicationRequest DispenseRequest InstructionForDispense Extension"
Description: "調剤指示。薬剤単位の調剤指示を表現するための拡張"
* ^url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense"
* ^date = "2022-03-16"
* ^purpose = "薬剤単位の調剤指示を表現するための拡張"
* ^context.type = #element
* ^context.expression = "MedicationRequest.dispenseRequest"
* id ..0
* url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense" (exactly)
* value[x] only CodeableConcept
* value[x].coding.system from http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-ePreDispenseInstruction