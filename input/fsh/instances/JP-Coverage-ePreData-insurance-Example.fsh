Instance: JP-Coverage-ePreData-insurance-Example
InstanceOf: Coverage
Usage: #example
Description: "医療保険Coverageリソースのインスタンス例（被保険者記号12345　番号６７８９０ 枝番01）"
* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Coverage_ePrescriptionData_insurance"
* status = #active
* type = urn:oid:1.2.392.100495.20.2.61#1
* beneficiary = Reference(JP-Patient-ePreData-Example)
* dependent = "01"
* relationship = urn:oid:1.2.392.100495.20.2.62#1 "被保険者"
* period.start = "2018-04-01"
* payor[0] = Reference(JP-Organization-ePreData-coveragePayer-Example)
* costToBeneficiary.type = $coverage-copay-type#copaypct "負担率"
* costToBeneficiary.valueQuantity = 30 '%' "%"
* extension[0].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSymbol"
* extension[=].valueString = "12345"
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonNumber"
* extension[=].valueString = "６７８９０"
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSubNumber"
* extension[=].valueString = "01"
