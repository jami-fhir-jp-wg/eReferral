Profile: JP_ServiceRequest
Parent:	ServiceRequest
Id:             JP-ServiceRequest
Description:    "JP-ServiceRequest　暫定プロファイル"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest"
* ^status = #active
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile: JP_Specimen
Parent:	Specimen
Id:             JP-Specimen
Description:    "JP-Specimen　暫定プロファイル"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen"
* ^status = #active
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_Observation_Common_eCS
Parent:			JP_Observation_Common
Id:             JP-Observation-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_Common_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_DocumentReference_CDAdocument
Parent:			JP_DocumentReference
Id:             JP-DocumentReference-CDAdocument
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DocumentReference_CDAdocument"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_DocumentReference
Parent:			DocumentReference
Id:             JP-DocumentReference
Description:    "JP_DocumentReference　暫定プロファイル"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DocumentReference"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_DocumentReference_eCS
Parent:			JP_DocumentReference
Id:             JP-DocumentReference-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DocumentReference_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_Immunization
Parent:			Immunization
Id:             JP-Immunization
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Immunization"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_Immunization_eCS
Parent:			JP_Immunization
Id:             JP-Immunization-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Immunization_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_ImagingStudy_Radiology_eCS
Parent:			JP_ImagingStudy_Radiology
Id:             JP-ImagingStudy-Radiology-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_MedicationStatement
Parent:			MedicationStatement
Id:             JP-MedicationStatement
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_MedicationStatement_eCS
Parent:			JP_MedicationStatement
Id:             JP-MedicationStatement-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationStatement_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_Procedure_eCS
Parent:			JP_Procedure
Id:             JP-Procedure-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Procedure_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_DeviceUseStatement
Parent:			DeviceUseStatement
Id:             JP-DeviceUseStatement
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DeviceUseStatement"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_DeviceUseStatement_eCS
Parent:			JP_DeviceUseStatement
Id:             JP-DeviceUseStatement-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DeviceUseStatement_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_Device
Parent:			Device
Id:             JP-Device
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Device"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_Device_eCS
Parent:			JP_Device
Id:             JP-Device-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Device_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS


Profile:        JP_Consent
Parent:			Consent
Id:             JP-Consent
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Consent"
* identifier
  * ^example[0].label = "General"
  * ^example[=].valueIdentifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
  * ^example[=].valueIdentifier.value = "123456"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_Consent_eCS
Parent:			JP_Consent
Id:             JP-Consent-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Consent_eCS"
* identifier
  * ^example[0].label = "General"
  * ^example[=].valueIdentifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
  * ^example[=].valueIdentifier.value = "123456"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_ResearchSubject
Parent:			ResearchSubject
Id:             JP-ResearchSubject
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ResearchSubject"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_ResearchSubject_eCS
Parent:			JP_ResearchSubject
Id:             JP-ResearchSubject-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_ResearchSubject_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_ResearchStudy
Parent:			ResearchStudy
Id:             JP-ResearchStudy
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ResearchStudy"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_ResearchStudy_eCS
Parent:			JP_ResearchStudy
Id:             JP-ResearchStudy-
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_ResearchStudy_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_RelatedPerson
Parent:			RelatedPerson
Id:             JP-RelatedPerson
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_RelatedPerson"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_RelatedPerson_eCS
Parent:			JP_RelatedPerson
Id:             JP-RelatedPerson-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_RelatedPerson_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS

Profile:        JP_Binary
Parent:			Binary
Id:             JP-Binary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Binary"
* ^date = "2023-03-31"
* meta.lastUpdated 0.. MS
