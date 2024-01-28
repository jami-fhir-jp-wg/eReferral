Profile: JP_Specimen
Parent:	Specimen
Id:             JP-Specimen
Description:    "JP-Specimen　暫定プロファイル"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen"
* ^status = #active
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_Condition_eClinicalSummary
Parent:			JP_Condition
Id:             JP-Condition-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"
* ^status = #active
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_Observation_Common_eClinicalSummary
Parent:			JP_Observation_Common
Id:             JP-Observation-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Observation_Common_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_DocumentReference_CDAdocument
Parent:			JP_DocumentReference
Id:             JP-DocumentReference-CDAdocument
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_DocumentReference_CDAdocument"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_DocumentReference
Parent:			DocumentReference
Id:             JP-DocumentReference
Description:    "JP_DocumentReference　暫定プロファイル"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DocumentReference"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_DocumentReference_eClinicalSummary
Parent:			JP_DocumentReference
Id:             JP-DocumentReference-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_DocumentReference_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_Immunization
Parent:			Immunization
Id:             JP-Immunization
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Immunization"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_Immunization_eClinicalSummary
Parent:			JP_Immunization
Id:             JP-Immunization-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Immunization_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_ImagingStudy_Radiology_eClinicalSummary
Parent:			JP_ImagingStudy_Radiology
Id:             JP-ImagingStudy-Radiology-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_MedicationStatement
Parent:			MedicationStatement
Id:             JP-MedicationStatement
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_MedicationStatement_eClinicalSummary
Parent:			JP_MedicationStatement
Id:             JP-MedicationStatement-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_MedicationStatement_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_Procedure_eClinicalSummary
Parent:			JP_Procedure
Id:             JP-Procedure-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Procedure_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_DeviceUseStatement
Parent:			DeviceUseStatement
Id:             JP-DeviceUseStatement
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DeviceUseStatement"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_DeviceUseStatement_eClinicalSummary
Parent:			JP_DeviceUseStatement
Id:             JP-DeviceUseStatement-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_DeviceUseStatement_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_Device
Parent:			Device
Id:             JP-Device
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Device"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


Profile:        JP_Device_eClinicalSummary
Parent:			JP_Device
Id:             JP-Device-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Device_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS


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
* meta.lastUpdated 1.. MS

Profile:        JP_Consent_eClinicalSummary
Parent:			JP_Consent
Id:             JP-Consent-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Consent_eClinicalSummary"
* identifier
  * ^example[0].label = "General"
  * ^example[=].valueIdentifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
  * ^example[=].valueIdentifier.value = "123456"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_ResearchSubject
Parent:			ResearchSubject
Id:             JP-ResearchSubject
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ResearchSubject"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_ResearchSubject_eClinicalSummary
Parent:			JP_ResearchSubject
Id:             JP-ResearchSubject-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_ResearchSubject_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_ResearchStudy
Parent:			ResearchStudy
Id:             JP-ResearchStudy
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ResearchStudy"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_ResearchStudy_eClinicalSummary
Parent:			JP_ResearchStudy
Id:             JP-ResearchStudy-
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_ResearchStudy_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_RelatedPerson
Parent:			RelatedPerson
Id:             JP-RelatedPerson
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_RelatedPerson"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_RelatedPerson_eClinicalSummary
Parent:			JP_RelatedPerson
Id:             JP-RelatedPerson-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_RelatedPerson_eClinicalSummary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS

Profile:        JP_Binary
Parent:			Binary
Id:             JP-Binary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Binary"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS
