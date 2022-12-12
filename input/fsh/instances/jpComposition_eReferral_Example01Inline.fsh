// Compositionリース
// Compositionリース
Alias: $doc-typecodes = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $referral-section = http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section







Instance: compositionReferralExample01Inline
InstanceOf: Composition
Usage: #inline

Description: "構成情報サンプル　composition"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral"

* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "ARGcode"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "ARGcode"
* status = #final
* type = $doc-typecodes#57133-1 "診療情報提供書"
* category = $doc-typecodes#57133-1 "診療情報提供書"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:e37cac19-9da9-492d-8810-0b7028b2e7e5"
* subject.type = "Patient"
* subject.display = "患者リソースPatient"

// * encounter.reference = "encounterReferralExample01Inline"
* encounter.reference = "urn:uuid:aafd328b-f5f1-4d82-97df-1e3912b7b83a"
* encounter.type = "Encounter"
* encounter.display = "受診Encounterリソース"

// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"

// * author[0].reference = "referralFromPractitionerExample01Inline"
* author[0].reference = "urn:uuid:30200dae-8f40-4b0c-ae7f-b3d749f84a14"
* author[=].type = "Practitioner"
* author[=].display = "紹介状作成者PractitionerRoleリソース"
// * author[+].reference = "referralFromOrganizationExample01Inline"
* author[+].reference = "urn:uuid:54243f57-bf99-49bb-a550-2dff4f928762"
* author[=].type = "Organization"
* author[=].display = "紹介状作成機関Organizationリソース"
* title = "診療情報提供書"
// * custodian.reference = "referralFromOrganizationExample01Inline"
* custodian.reference = "urn:uuid:54243f57-bf99-49bb-a550-2dff4f928762"
* custodian.type = "Organization"
* custodian.display = "紹介状交付責任機関Organizationリソース"

* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"

* section[+].title = "紹介先情報"
* section[=].code = $referral-section#910 "紹介先情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京第一テスト病院</div>"
// * section[=].entry[+].reference = "referralToOrganizationExample01Inline"
* section[=].entry[+].reference = "urn:uuid:57f9aa2c-9c23-4d70-a122-32ca6542f16e"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先医療機関"


// * section[=].entry[+].reference = "referralToOrganizationDeptExample01Inline"
* section[=].entry[+].reference = "urn:uuid:5be4701a-03b6-4d7d-9e1b-32b181d58900"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先診療科"


// * section[=].entry[+].reference = "referralToPractitionerExample01Inline"
* section[=].entry[+].reference = "urn:uuid:9cc36963-69dd-45f2-91b9-fe3fb9d62ce7"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介先医師"


* section[+].title = "紹介元情報"
* section[=].code = $referral-section#920 "紹介元情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">港診療所</div>"
// * section[=].entry[+].reference = "referralFromOrganizationExample01Inline"
* section[=].entry[+].reference = "urn:uuid:54243f57-bf99-49bb-a550-2dff4f928762"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元医療機関"


// * section[=].entry[+].reference = "referralFromOrganizationDeptExample01Inline"
* section[=].entry[+].reference = "urn:uuid:52e8eb12-accd-4fb5-b9db-6f4c81fec40d"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元診療科"


// * section[=].entry[+].reference = "referralFromPractitionerExample01Inline"
* section[=].entry[+].reference = "urn:uuid:30200dae-8f40-4b0c-ae7f-b3d749f84a14"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介元医師"


* section[+].title = "構造情報"
* section[=].code = $referral-section#300 "構造情報セクション"
* section[=].section[+].title = "紹介目的"
* section[=].section[=].code = $referral-section#950 "紹介目的セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
// * section[=].section[=].entry[+].reference = "purposeReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:5d9ed8ff-94c8-464b-b434-c43899d79aff"
* section[=].section[=].entry[=].type = "Encounter"
* section[=].section[=].entry[=].display = "紹介目的"


* section[=].section[+].title = "傷病名・主訴"
* section[=].section[=].code = $referral-section#340 "傷病名・主訴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">上腹部痛、腰痛</div>"
// * section[=].section[=].entry[+].reference = "cc1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:442dbf6f-f31c-4265-953a-1323c5edf71a"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "傷病名・主訴"
// * section[=].section[=].entry[+].reference = "cc2ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:059cea4f-4222-43a1-9e66-41739059a8b6"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "傷病名・主訴"


* section[=].section[+].title = "現病歴"
* section[=].section[=].code = $referral-section#360 "現病歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。</div>"
// * section[=].section[=].entry[+].reference = "piReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:0cf432f3-6c3d-4c2e-b18f-89605384148c"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "現病歴"


* section[=].section[+].title = "既往歴"
* section[=].section[=].code = $referral-section#370 "既往歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">2018年　狭心症　２ヶ月治療で軽快。2019年　交通事故で左前腕骨折　３ヶ月ギプス固定。</div>"
//  Reference(JP_Condition) 既往歴
// * section[=].section[=].entry[+].reference = "ph1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:20cc10b3-549f-4e00-a6b1-59da4e3b8c14"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "既往歴"
// * section[=].section[=].entry[+].reference = "ph2ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:2241aeed-47ab-473a-bd6f-fe393abcfbaf"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "既往歴"


* section[=].section[+].title = "アレルギー・不耐性反応"
* section[=].section[=].code = $referral-section#510 "アレルギー・不耐性反応セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">サバ　キーウイ</div>"
//  Reference(JP_Condition) アレルギー
// * section[=].section[=].entry[+].reference = "alg1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:2616fe00-0b89-4d40-9edf-c7223c793c45"
* section[=].section[=].entry[=].type = "AllergyIntolerance"
* section[=].section[=].entry[=].display = "アレルギー・不耐性反応"
// * section[=].section[=].entry[+].reference = "alg1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:2616fe00-0b89-4d40-9edf-c7223c793c45"
* section[=].section[=].entry[=].type = "AllergyIntolerance"
* section[=].section[=].entry[=].display = "アレルギー・不耐性反応"


* section[=].section[+].title = "家族歴"
* section[=].section[=].code = $referral-section#550 "家族歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">母　胃がん</div>"
//  Reference(JP_FamilyMemberHistory) 家族歴


* section[=].section[+].title = "身体所見"
* section[=].section[=].code = $referral-section#610 "身体所見セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹部所見：上腹部圧痛あり、その他特に所見なし。</div>"
//  Reference(JP_Observation_Common) 身体所見
// * section[=].section[=].entry[+].reference = "psobsCommonExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:d5f09fcc-c91b-48fd-9c02-ea4cbbf4f74e"
* section[=].section[=].entry[=].type = "Observation"
* section[=].section[=].entry[=].display = "身体所見"


* section[=].section[+].title = "感染症情報"
* section[=].section[=].code = $referral-section#520 "感染症情報セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">特になし</div>"
//  Reference(JP_Observation_Common) 感染症情報


* section[=].section[+].title = "臨床経過"
* section[=].section[=].code = $referral-section#330 "臨床経過セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">添付参照</div>"
//  Reference(JP_DocumentReference) 臨床経過
// * section[=].section[=].entry[+].reference = "ccourseReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:2b5a4cf6-4300-4d26-8f5e-014ca2621c60"
* section[=].section[=].entry[=].type = "DocumentReference"
* section[=].section[=].entry[=].display = "臨床経過"






