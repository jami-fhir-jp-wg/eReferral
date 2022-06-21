Instance: JP-Coverage-ePreData-publicPayment-Example
InstanceOf: Coverage
Usage: #example
Description: "公費Coverageリソースのインスタンス例（公費負担者番号12345678）"
* meta.profile = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Coverage_ePrescriptionData_publicPayment"
* status = #active
* type = urn:oid:1.2.392.100495.20.2.61#8
* subscriberId = "12345678"
* beneficiary = Reference(JP-Patient-ePreData-Example)
* period.start = "2020-01-01"
* period.end = "2020-12-31"
* payor[0] = Reference(JP-Organization-ePreData-publicPayer-Example)
* order = 1
* costToBeneficiary.type = $coverage-copay-type#copaypct "負担率"
* costToBeneficiary.valueQuantity = 10 '%' "%"