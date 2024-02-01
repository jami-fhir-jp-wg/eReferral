// Compositionリース
// Compositionリース
Alias: $doc-typecodes = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $referral-section = http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section







Instance: compositionReferralExample01Inline
InstanceOf: JP_Composition_eReferral
Usage: #inline

Description: "構成情報サンプル　composition"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral"

* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1.0"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1311234567-2021-12345678"
* status = #final
* type = $doc-typecodes#57133-1 "診療情報提供書"
* category = $doc-typecodes#57133-1 "診療情報提供書"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* subject.type = "Patient"
* subject.display = "患者リソースPatient"

// * encounter.reference = "encounterReferralExample01Inline"
* encounter.reference = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"
* encounter.type = "Encounter"
* encounter.display = "受診Encounterリソース"

// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"

// * author[0].reference = "referralFromPractitionerExample01Inline"
* author[0].reference = "urn:uuid:3e6a0ba2-d781-4fd7-9de6-e077b690daed"
* author[=].type = "Practitioner"
* author[=].display = "紹介状作成者PractitionerRoleリソース"
// * author[+].reference = "referralFromOrganizationExample01Inline"
* author[+].reference = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* author[=].type = "Organization"
* author[=].display = "紹介状作成機関Organizationリソース"
* title = "診療情報提供書"
// * custodian.reference = "referralFromOrganizationExample01Inline"
* custodian.reference = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* custodian.type = "Organization"
* custodian.display = "紹介状交付責任機関Organizationリソース"

* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"

* section[referralToSection].title = "紹介先情報"
* section[referralToSection].code.coding = $referral-section#910 "紹介先情報セクション"
* section[referralToSection].text.status = #additional
* section[referralToSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京第一テスト病院</div>"
// * section[=].entry[+].reference = "referralToOrganizationExample01Inline"
* section[referralToSection].entry[referralToOrganization].reference = "urn:uuid:a44951be-cdaa-4c53-9e35-6be013da5441"
* section[referralToSection].entry[referralToOrganization].type = "Organization"
* section[referralToSection].entry[referralToOrganization].display = "紹介先医療機関"


// * section[=].entry[+].reference = "referralToOrganizationDeptExample01Inline"
* section[referralToSection].entry[referralToDepartment].reference = "urn:uuid:9f92f003-69e6-4983-85eb-fb49a3110b59"
* section[referralToSection].entry[referralToDepartment].type = "Organization"
* section[referralToSection].entry[referralToDepartment].display = "紹介先診療科"


// * section[=].entry[+].reference = "referralToPractitionerExample01Inline"
* section[referralToSection].entry[referralToDoctor].reference = "urn:uuid:f11535c2-043d-43b6-bf99-b8298ea3c946"
* section[referralToSection].entry[referralToDoctor].type = "Practitioner"
* section[referralToSection].entry[referralToDoctor].display = "紹介先医師"


* section[referralFromSection].title = "紹介元情報"
* section[referralFromSection].code.coding = $referral-section#920 "紹介元情報セクション"
* section[referralFromSection].text.status = #additional
* section[referralFromSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">港診療所</div>"
// * section[=].entry[+].reference = "referralFromOrganizationExample01Inline"
* section[referralFromSection].entry[referralFromOrganization].reference = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* section[referralFromSection].entry[referralFromOrganization].type = "Organization"
* section[referralFromSection].entry[referralFromOrganization].display = "紹介元医療機関"


// * section[=].entry[+].reference = "referralFromOrganizationDeptExample01Inline"
* section[referralFromSection].entry[referralFromDepartment].reference = "urn:uuid:2e979bec-720b-4e36-8eb9-ebe661172af3"
* section[referralFromSection].entry[referralFromDepartment].type = "Organization"
* section[referralFromSection].entry[referralFromDepartment].display = "紹介元診療科"


// * section[=].entry[+].reference = "referralFromPractitionerExample01Inline"
* section[referralFromSection].entry[referralFromDoctor].reference = "urn:uuid:3e6a0ba2-d781-4fd7-9de6-e077b690daed"
* section[referralFromSection].entry[referralFromDoctor].type = "Practitioner"
* section[referralFromSection].entry[referralFromDoctor].display = "紹介元医師"


* section[compositionSection].title = "構造情報"
* section[compositionSection].code.coding = $referral-section#300 "構造情報セクション"
* section[compositionSection].section[referralPurposeSection].title = "紹介目的"
* section[compositionSection].section[referralPurposeSection].code.coding = $referral-section#950 "紹介目的セクション"
* section[compositionSection].section[referralPurposeSection].text.status = #additional
* section[compositionSection].section[referralPurposeSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
// * section[compositionSection].section[=].entry[+].reference = "purposeReferralExample01Inline"
* section[compositionSection].section[referralPurposeSection].entry[+].reference = "urn:uuid:3acc3dc7-c79b-41f1-8eea-ac4de9b664b8"
* section[compositionSection].section[referralPurposeSection].entry[=].type = "Encounter"
* section[compositionSection].section[referralPurposeSection].entry[=].display = "紹介目的"


* section[compositionSection].section[problemSection].title = "傷病名・主訴"
* section[compositionSection].section[problemSection].code.coding = $referral-section#340 "傷病名・主訴セクション"
* section[compositionSection].section[problemSection].text.status = #additional
* section[compositionSection].section[problemSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">上腹部痛、腰痛</div>"
// * section[compositionSection].section[=].entry[+].reference = "cc1ReferralExample01Inline"
* section[compositionSection].section[problemSection].entry[+].reference = "urn:uuid:6a31db8e-109d-4349-b0cf-095131c3307a"
* section[compositionSection].section[problemSection].entry[=].type = "Condition"
* section[compositionSection].section[problemSection].entry[=].display = "傷病名・主訴"
// * section[compositionSection].section[problemSection].entry[+].reference = "cc2ReferralExample01Inline"
* section[compositionSection].section[problemSection].entry[+].reference = "urn:uuid:a9358f3e-c743-4998-aa89-1be54c31b432"
* section[compositionSection].section[problemSection].entry[=].type = "Condition"
* section[compositionSection].section[problemSection].entry[=].display = "傷病名・主訴"


* section[compositionSection].section[presentIllnessSection].title = "現病歴"
* section[compositionSection].section[presentIllnessSection].code.coding = $referral-section#360 "現病歴セクション"
* section[compositionSection].section[presentIllnessSection].text.status = #additional
* section[compositionSection].section[presentIllnessSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。</div>"
// * section[compositionSection].section[presentIllnessSection].entry[+].reference = "piReferralExample01Inline"
* section[compositionSection].section[presentIllnessSection].entry[+].reference = "urn:uuid:5eab50b2-6741-467c-a2fd-a4adab1f835f"
* section[compositionSection].section[presentIllnessSection].entry[=].type = "Condition"
* section[compositionSection].section[presentIllnessSection].entry[=].display = "現病歴"


* section[compositionSection].section[pastIllnessSection].title = "既往歴"
* section[compositionSection].section[pastIllnessSection].code.coding = $referral-section#370 "既往歴セクション"
* section[compositionSection].section[pastIllnessSection].text.status = #additional
* section[compositionSection].section[pastIllnessSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">2018年　狭心症　２ヶ月治療で軽快。2019年　交通事故で左前腕骨折　３ヶ月ギプス固定。</div>"
//  Reference(JP_Condition) 既往歴
// * section[compositionSection].section[pastIllnessSection].entry[+].reference = "ph1ReferralExample01Inline"
* section[compositionSection].section[pastIllnessSection].entry[+].reference = "urn:uuid:5c650562-f4e4-40b3-87c6-e9a0376be7a8"
* section[compositionSection].section[pastIllnessSection].entry[=].type = "Condition"
* section[compositionSection].section[pastIllnessSection].entry[=].display = "既往歴"
// * section[compositionSection].section[pastIllnessSection].entry[+].reference = "ph2ReferralExample01Inline"
* section[compositionSection].section[pastIllnessSection].entry[+].reference = "urn:uuid:a28198b9-6a23-4677-ba2e-5eb3e17d9792"
* section[compositionSection].section[pastIllnessSection].entry[=].type = "Condition"
* section[compositionSection].section[pastIllnessSection].entry[=].display = "既往歴"


* section[compositionSection].section[allergiesIIntoleranceSection].title = "アレルギー・不耐性反応"
* section[compositionSection].section[allergiesIIntoleranceSection].code.coding = $referral-section#510 "アレルギー・不耐性反応セクション"
* section[compositionSection].section[allergiesIIntoleranceSection].text.status = #additional
* section[compositionSection].section[allergiesIIntoleranceSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">サバ　キーウイ</div>"
//  Reference(JP_Condition) アレルギー
// * section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "alg1ReferralExample01Inline"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "urn:uuid:711b07ae-d20b-40b0-9aa9-c7f1981409e6"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].type = "AllergyIntolerance"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].display = "アレルギー・不耐性反応"
// * section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "alg1ReferralExample01Inline"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "urn:uuid:5a1aae74-f720-415a-ba15-a6c8b5d4c5a1"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].type = "AllergyIntolerance"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].display = "アレルギー・不耐性反応"


* section[compositionSection].section[familiyHistorySection].title = "家族歴"
* section[compositionSection].section[familiyHistorySection].code.coding = $referral-section#550 "家族歴セクション"
* section[compositionSection].section[familiyHistorySection].text.status = #additional
* section[compositionSection].section[familiyHistorySection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">母　胃がん</div>"
//  Reference(JP_FamilyMemberHistory) 家族歴


* section[compositionSection].section[admissionPhysicalStatusSection].title = "身体所見"
* section[compositionSection].section[admissionPhysicalStatusSection].code.coding = $referral-section#610 "身体所見セクション"
* section[compositionSection].section[admissionPhysicalStatusSection].text.status = #additional
* section[compositionSection].section[admissionPhysicalStatusSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹部所見：上腹部圧痛あり、その他特に所見なし。</div>"
//  Reference(JP_Observation_Common) 身体所見
// * section[compositionSection].section[admissionPhysicalStatusSection].entry[+].reference = "psobsCommonExample01Inline"
* section[compositionSection].section[admissionPhysicalStatusSection].entry[+].reference = "urn:uuid:481835ef-0891-45de-a006-087954ab6b7c"
* section[compositionSection].section[admissionPhysicalStatusSection].entry[=].type = "Observation"
* section[compositionSection].section[admissionPhysicalStatusSection].entry[=].display = "身体所見"


* section[compositionSection].section[infectiousDiseaseInformationSection].title = "感染症情報"
* section[compositionSection].section[infectiousDiseaseInformationSection].code.coding = $referral-section#520 "感染症情報セクション"
* section[compositionSection].section[infectiousDiseaseInformationSection].text.status = #additional
* section[compositionSection].section[infectiousDiseaseInformationSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">特になし</div>"
//  Reference(JP_Observation_Common) 感染症情報


* section[compositionSection].section[clinicalCourseSection].title = "臨床経過"
* section[compositionSection].section[clinicalCourseSection].code.coding = $referral-section#330 "臨床経過セクション"
* section[compositionSection].section[clinicalCourseSection].text.status = #additional
* section[compositionSection].section[clinicalCourseSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">添付参照</div>"
//  Reference(JP_DocumentReference) 臨床経過
// * section[compositionSection].section[clinicalCourseSection].entry[+].reference = "ccourseReferralExample01Inline"
* section[compositionSection].section[clinicalCourseSection].entry[+].reference = "urn:uuid:a6e4fc73-a749-4583-94a7-18e4241b4c75"
* section[compositionSection].section[clinicalCourseSection].entry[=].type = "DocumentReference"
* section[compositionSection].section[clinicalCourseSection].entry[=].display = "臨床経過"






