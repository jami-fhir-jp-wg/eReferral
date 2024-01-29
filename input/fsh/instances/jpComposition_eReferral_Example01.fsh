// Compositionリース
// Compositionリース
Alias: $doc-typecodes = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $referral-section = http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section







Instance: CompositionReferralExample01
InstanceOf: JP_Composition_eReferral
Usage: #example

Description: "Compositionリソース　（診療情報提供書　構成情報）"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral"

* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "ARGcode"
 
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "ARGcode"
* status = #final
* type = $doc-typecodes#57133-1 "診療情報提供書"
* category = $doc-typecodes#57133-1 "診療情報提供書"
 
* subject.reference = "Patient/jppatientExample01"
* subject.type = "Patient"
* subject.display = "患者リソースPatient"
 
* encounter.reference = "Encounter/encounterReferralExample01"
* encounter.type = "Encounter"
* encounter.display = "受診Encounterリソース"
 
// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"
 
* author[0].reference = "Practitioner/referralFromPractitionerExample01"
* author[=].type = "Practitioner"
* author[=].display = "紹介状作成者PractitionerRoleリソース"
* author[+].reference = "Organization/referralFromOrganizationExample01"
* author[=].type = "Organization"
* author[=].display = "紹介状作成機関Organizationリソース"
* title = "診療情報提供書"
* custodian.reference = "Organization/referralFromOrganizationExample01"
* custodian.type = "Organization"
* custodian.display = "紹介状交付責任機関Organizationリソース"
 
* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"
 
* section[referralToSection].title = "紹介先情報"
* section[referralToSection].code = $referral-section#910 "紹介先情報セクション"
* section[referralToSection].text.status = #additional
* section[referralToSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京第一テスト病院</div>"
* section[referralToSection].entry[referralToOrganization].reference = "Organization/referralToOrganizationExample01"
* section[referralToSection].entry[referralToOrganization].type = "Organization"
* section[referralToSection].entry[referralToOrganization].display = "紹介先医療機関"

 
* section[referralToSection].entry[referralToDepartment].reference = "Organization/referralToOrganizationDeptExample01"
* section[referralToSection].entry[referralToDepartment].type = "Organization"
* section[referralToSection].entry[referralToDepartment].display = "紹介先診療科"

 
* section[referralToSection].entry[referralToDoctor].reference = "Practitioner/referralToPractitionerExample01"
* section[referralToSection].entry[referralToDoctor].type = "Practitioner"
* section[referralToSection].entry[referralToDoctor].display = "紹介先医師"

 
* section[referralFromSection].title = "紹介元情報"
* section[referralFromSection].code = $referral-section#920 "紹介元情報セクション"
* section[referralFromSection].text.status = #additional
* section[referralFromSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">港診療所</div>"
* section[referralFromSection].entry[referralFromOrganization].reference = "Organization/referralFromOrganizationExample01"
* section[referralFromSection].entry[referralFromOrganization].type = "Organization"
* section[referralFromSection].entry[referralFromOrganization].display = "紹介元医療機関"

 
* section[referralFromSection].entry[referralFromDepartment].reference = "Organization/referralFromOrganizationDeptExample01"
* section[referralFromSection].entry[referralFromDepartment].type = "Organization"
* section[referralFromSection].entry[referralFromDepartment].display = "紹介元診療科"

 
* section[referralFromSection].entry[referralFromDoctor].reference = "Practitioner/referralFromPractitionerExample01"
* section[referralFromSection].entry[referralFromDoctor].type = "Practitioner"
* section[referralFromSection].entry[referralFromDoctor].display = "紹介元医師"

 
* section[compositionSection].title = "構造情報"
* section[compositionSection].code = $referral-section#300 "構造情報セクション"
* section[compositionSection].section[referralPurposeSection].title = "紹介目的"
* section[compositionSection].section[referralPurposeSection].code = $referral-section#950 "紹介目的セクション"
* section[compositionSection].section[referralPurposeSection].text.status = #additional
* section[compositionSection].section[referralPurposeSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
* section[compositionSection].section[referralPurposeSection].entry[+].reference = "Encounter/purposeReferralExample01"
* section[compositionSection].section[referralPurposeSection].entry[=].type = "Encounter"
* section[compositionSection].section[referralPurposeSection].entry[=].display = "紹介目的"

 
* section[compositionSection].section[problemSection].title = "傷病名・主訴"
* section[compositionSection].section[problemSection].code = $referral-section#340 "傷病名・主訴セクション"
* section[compositionSection].section[problemSection].text.status = #additional
* section[compositionSection].section[problemSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">上腹部痛、腰痛</div>"
* section[compositionSection].section[problemSection].entry[+].reference = "Condition/cc1ReferralExample01"
* section[compositionSection].section[problemSection].entry[=].type = "Condition"
* section[compositionSection].section[problemSection].entry[=].display = "傷病名・主訴"
* section[compositionSection].section[problemSection].entry[+].reference = "Condition/cc2ReferralExample01"
* section[compositionSection].section[problemSection].entry[=].type = "Condition"
* section[compositionSection].section[problemSection].entry[=].display = "傷病名・主訴"

 
* section[compositionSection].section[presentIllnessSection].title = "現病歴"
* section[compositionSection].section[presentIllnessSection].code = $referral-section#360 "現病歴セクション"
* section[compositionSection].section[presentIllnessSection].text.status = #additional
* section[compositionSection].section[presentIllnessSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。</div>"
* section[compositionSection].section[presentIllnessSection].entry[+].reference = "Condition/piReferralExample01"
* section[compositionSection].section[presentIllnessSection].entry[=].type = "Condition"
* section[compositionSection].section[presentIllnessSection].entry[=].display = "現病歴"

 
* section[compositionSection].section[pastIllnessSection].title = "既往歴"
* section[compositionSection].section[pastIllnessSection].code = $referral-section#370 "既往歴セクション"
* section[compositionSection].section[pastIllnessSection].text.status = #additional
* section[compositionSection].section[pastIllnessSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">2018年　狭心症　２ヶ月治療で軽快。2019年　交通事故で左前腕骨折　３ヶ月ギプス固定。</div>"
//  Reference(JP_Condition) 既往歴
* section[compositionSection].section[pastIllnessSection].entry[+].reference = "Condition/ph1ReferralExample01"
* section[compositionSection].section[pastIllnessSection].entry[=].type = "Condition"
* section[compositionSection].section[pastIllnessSection].entry[=].display = "既往歴"
* section[compositionSection].section[pastIllnessSection].entry[+].reference = "Condition/ph2ReferralExample01"
* section[compositionSection].section[pastIllnessSection].entry[=].type = "Condition"
* section[compositionSection].section[pastIllnessSection].entry[=].display = "既往歴"

 
* section[compositionSection].section[allergiesIIntoleranceSection].title = "アレルギー・不耐性反応"
* section[compositionSection].section[allergiesIIntoleranceSection].code = $referral-section#510 "アレルギー・不耐性反応セクション"
* section[compositionSection].section[allergiesIIntoleranceSection].text.status = #additional
* section[compositionSection].section[allergiesIIntoleranceSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">サバ　キーウイ</div>"
//  Reference(JP_Condition) アレルギー
* section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "AllergyIntolerance/alg1ReferralExample01"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].type = "AllergyIntolerance"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].display = "アレルギー・不耐性反応"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "AllergyIntolerance/alg1ReferralExample02"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].type = "AllergyIntolerance"
* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].display = "アレルギー・不耐性反応"

 
* section[compositionSection].section[familiyHistorySection].title = "家族歴"
* section[compositionSection].section[familiyHistorySection].code = $referral-section#550 "家族歴セクション"
* section[compositionSection].section[familiyHistorySection].text.status = #additional
* section[compositionSection].section[familiyHistorySection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">母　胃がん</div>"
//  Reference(JP_FamilyMemberHistory) 家族歴

 
* section[compositionSection].section[admissinoPhysicalStatusSection].title = "身体所見"
* section[compositionSection].section[admissinoPhysicalStatusSection].code = $referral-section#610 "身体所見セクション"
* section[compositionSection].section[admissinoPhysicalStatusSection].text.status = #additional
* section[compositionSection].section[admissinoPhysicalStatusSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹部所見：上腹部圧痛あり、その他特に所見なし。</div>"
//  Reference(JP_Observation_Common) 身体所見
* section[compositionSection].section[admissinoPhysicalStatusSection].entry[+].reference = "Observation/psobsCommonExample01"
* section[compositionSection].section[admissinoPhysicalStatusSection].entry[=].type = "Observation"
* section[compositionSection].section[admissinoPhysicalStatusSection].entry[=].display = "身体所見"

 
* section[compositionSection].section[infectiousDiseaseInformationSection].title = "感染症情報"
* section[compositionSection].section[infectiousDiseaseInformationSection].code = $referral-section#520 "感染症情報セクション"
* section[compositionSection].section[infectiousDiseaseInformationSection].text.status = #additional
* section[compositionSection].section[infectiousDiseaseInformationSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">特になし</div>"
//  Reference(JP_Observation_Common) 感染症情報


* section[compositionSection].section[clinicalCourseSection].title = "臨床経過"
* section[compositionSection].section[clinicalCourseSection].code = $referral-section#330 "臨床経過セクション"
* section[compositionSection].section[clinicalCourseSection].text.status = #additional
* section[compositionSection].section[clinicalCourseSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">添付参照</div>"
//  Reference(JP_DocumentReference) 臨床経過
* section[compositionSection].section[clinicalCourseSection].entry[+].reference = "DocumentReference/ccourseReferralExample01"
* section[compositionSection].section[clinicalCourseSection].entry[=].type = "DocumentReference"
* section[compositionSection].section[clinicalCourseSection].entry[=].display = "臨床経過"






