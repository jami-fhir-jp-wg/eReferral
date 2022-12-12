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

* section[+].title = "紹介先情報"
* section[=].code = $referral-section#910 "紹介先情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京第一テスト病院</div>"
// * section[=].entry[+].reference = "referralToOrganizationExample01Inline"
* section[=].entry[+].reference = "urn:uuid:a44951be-cdaa-4c53-9e35-6be013da5441"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先医療機関"


// * section[=].entry[+].reference = "referralToOrganizationDeptExample01Inline"
* section[=].entry[+].reference = "urn:uuid:9f92f003-69e6-4983-85eb-fb49a3110b59"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先診療科"


// * section[=].entry[+].reference = "referralToPractitionerExample01Inline"
* section[=].entry[+].reference = "urn:uuid:f11535c2-043d-43b6-bf99-b8298ea3c946"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介先医師"


* section[+].title = "紹介元情報"
* section[=].code = $referral-section#920 "紹介元情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">港診療所</div>"
// * section[=].entry[+].reference = "referralFromOrganizationExample01Inline"
* section[=].entry[+].reference = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元医療機関"


// * section[=].entry[+].reference = "referralFromOrganizationDeptExample01Inline"
* section[=].entry[+].reference = "urn:uuid:2e979bec-720b-4e36-8eb9-ebe661172af3"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元診療科"


// * section[=].entry[+].reference = "referralFromPractitionerExample01Inline"
* section[=].entry[+].reference = "urn:uuid:3e6a0ba2-d781-4fd7-9de6-e077b690daed"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介元医師"


* section[+].title = "構造情報"
* section[=].code = $referral-section#300 "構造情報セクション"
* section[=].section[+].title = "紹介目的"
* section[=].section[=].code = $referral-section#950 "紹介目的セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
// * section[=].section[=].entry[+].reference = "purposeReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:3acc3dc7-c79b-41f1-8eea-ac4de9b664b8"
* section[=].section[=].entry[=].type = "Encounter"
* section[=].section[=].entry[=].display = "紹介目的"


* section[=].section[+].title = "傷病名・主訴"
* section[=].section[=].code = $referral-section#340 "傷病名・主訴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">上腹部痛、腰痛</div>"
// * section[=].section[=].entry[+].reference = "cc1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:6a31db8e-109d-4349-b0cf-095131c3307a"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "傷病名・主訴"
// * section[=].section[=].entry[+].reference = "cc2ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:a9358f3e-c743-4998-aa89-1be54c31b432"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "傷病名・主訴"


* section[=].section[+].title = "現病歴"
* section[=].section[=].code = $referral-section#360 "現病歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。</div>"
// * section[=].section[=].entry[+].reference = "piReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:5eab50b2-6741-467c-a2fd-a4adab1f835f"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "現病歴"


* section[=].section[+].title = "既往歴"
* section[=].section[=].code = $referral-section#370 "既往歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">2018年　狭心症　２ヶ月治療で軽快。2019年　交通事故で左前腕骨折　３ヶ月ギプス固定。</div>"
//  Reference(JP_Condition) 既往歴
// * section[=].section[=].entry[+].reference = "ph1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:5c650562-f4e4-40b3-87c6-e9a0376be7a8"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "既往歴"
// * section[=].section[=].entry[+].reference = "ph2ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:a28198b9-6a23-4677-ba2e-5eb3e17d9792"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "既往歴"


* section[=].section[+].title = "アレルギー・不耐性反応"
* section[=].section[=].code = $referral-section#510 "アレルギー・不耐性反応セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">サバ　キーウイ</div>"
//  Reference(JP_Condition) アレルギー
// * section[=].section[=].entry[+].reference = "alg1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:711b07ae-d20b-40b0-9aa9-c7f1981409e6"
* section[=].section[=].entry[=].type = "AllergyIntolerance"
* section[=].section[=].entry[=].display = "アレルギー・不耐性反応"
// * section[=].section[=].entry[+].reference = "alg1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:711b07ae-d20b-40b0-9aa9-c7f1981409e6"
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
* section[=].section[=].entry[+].reference = "urn:uuid:481835ef-0891-45de-a006-087954ab6b7c"
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
* section[=].section[=].entry[+].reference = "urn:uuid:a6e4fc73-a749-4583-94a7-18e4241b4c75"
* section[=].section[=].entry[=].type = "DocumentReference"
* section[=].section[=].entry[=].display = "臨床経過"






