// Organizaionリース
// JP_Organizaion
// JP_Organization_eClinicalSummary_issuer
// 0E1mr_機関都道府県番号(ARGcode)
// 0E2mr_機関区分(ARGcode)
// 0E3mr_機関保険医療機関番号(ARGcode)
// 000mn_ExampleJPOrganization_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPOrganization_eCS()
//
// 010mn_機関医療機関番号(ARGorgno)
// 040mn_機関名(ARGorgname)
// 040or_機関電話番号(ARG)
// 080or_機関住所(ARGpostal,ARGtext)
// Organizaionリース
// JP_Organizaion
// JP_Organization_eClinicalSummary_departmentOfIssuer
// 000mn_ExampleJPOrganizationDept_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPOrganizationDept_eCS()
//
// 030mn_診療科コード名称(ARGcodesystem, ARGdeptcode)
// 040mn_診療科名称(ARGorgname)
// 040or_診療科所属医療機関参照(ARGrefresource)
// Practitionerリース
// JP_Practitioner
// JP_Practitioner_eClinicalSummary_author
// 000mn_ExampleJPPractitioner_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPPractitioner_eCS()
// 030mn_医療者漢字氏名(ARGfirstname,ARGgivenname)
// 030on_医療者カナ氏名(ARGfirstnamekana,ARGgivennamekana)

Instance: referralToOrganizationExample01Inline
InstanceOf: JP_Organization
Usage: #inline

Description: "紹介先医療機関情報　例"

// 002or_ValidationProfile(ARGmetaprofile)
* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Organization_eClinicalSummary"

//
//--------------
// 機関都道府県番号：2桁数字　北海道は01
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo" (exactly)
* extension[=].valueCoding.system = "urn:oid:1.2.392.100495.20.3.21"
* extension[=].valueCoding.code = #13

// 点数表コード１桁「1：医科」、「3：歯科」
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationCategory" (exactly)
* extension[=].valueCoding.system = "urn:oid:1.2.392.100495.20.3.22"
* extension[=].valueCoding.code = #1

// 保険医療機関番号７桁
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationNo" (exactly)
* extension[=].valueIdentifier.system = "urn:oid:1.2.392.100495.20.3.23"
* extension[=].valueIdentifier.value = "1234567"

//
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier[=].value = "1311234567"
* type[+].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[=].coding.code = #prov

* name = "東京第一テスト病院"

* telecom[+].system = #phone
* telecom[=].value = "03-1234-5678"

* address[+].text = "東京都文京区文京町１−２−３"
* address[=].postalCode = "113-0001"
* address[=].country = "JP"

//--------------

Instance: referralToOrganizationDeptExample01Inline
InstanceOf: JP_Organization
Usage: #inline

Description: "紹介先医療機関の診療科情報　例"

//002or_ValidationProfile(ARGmetaprofile)
* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Organization_eClinicalSummary_department"

//
* type[+].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[=].coding.code = #dept
//
* type[+].coding.system = "urn:oid:1.2.392.100495.20.2.51"
* type[=].coding.code = #03

* name = "循環器内科"

// * partOf.reference = "referralToOrganizationDeptExample01Inline"
* partOf.reference = "urn:uuid:9f92f003-69e6-4983-85eb-fb49a3110b59"

//--------------
Instance: referralToPractitionerExample01Inline
InstanceOf: JP_Practitioner
Usage: #inline

Description: "紹介先医療機関の医師情報　例"

// 002or_ValidationProfile(ARGmetaprofile)
* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Practitioner_eClinicalSummary"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "野口　英世丸"
* name[=].family = "野口"
* name[=].given = "英世丸"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "ノグチ　ヒデヨマル"
* name[=].family = "ノグチ"
* name[=].given = "ヒデヨマル"

//--------------


