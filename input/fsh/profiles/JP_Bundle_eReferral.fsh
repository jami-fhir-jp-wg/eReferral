Profile: JP_Bundle_eReferral
Parent: JP_Bundle_CCLIX
Id: JP-Bundle-eReferral
Description: "診療情報提供書のBundle Documentのプロファル。"
* ^url = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"
* ^status = #active
* . ^short = "Contains a collection of resources リソース集合を含む文書バンドル"
* . ^definition = "A container for a collection of resources.\r\nリソース集合のためのコンテナ\r\n診療情報交換のための文書形式のバンドルの共通プロファイル"

* total ..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

// --- JP_Bundle_CCLIX ---
// * entry contains
//     composition 1..1 MS and
//     patient 1..1 MS and
//     encounterOnDocument 0..1 MS and
//     healthInsurancePublic 0.. MS and
//     publicPayment 0.. and
//     commonPayerOrganization 0..2 MS and
//     custodianOrganization 1..1 MS and
//     custodianDepartmentOfOrganization 0..1 MS and
//     authorisedAuthorRole 0..1 MS and
//     authorisedAuthor 0..1 MS

* entry contains
//    composition 1..1 MS
//and patient 1..1 MS 
//and encounterOnDocument 0..1 MS
    authorOrganization 1..1 MS // 文書作成機関
and authorDepartmentOfOrganization 0..1 MS // 文書作成者の診療科
//and authorisedAuthor 0..1 MS // 文書作成者
//and custodianOrganization 1..1 MS // 文書作成管理機関

and referralToOrganizaiton 1..1 MS  // 紹介先医療機関
and referralToDepartment 0..1 MS     // 紹介先医療機関の診療科
and referralToDoctor 0..1 MS    // 紹介先医療機関の医師
and referralFromOrganizaiton 1..1 MS  // 紹介元の医療機関
and referralFromDepartment 0..1 MS  // 紹介元の医療機関の診療科
and referralFromDoctor 1..1 MS  // 紹介元の医療機関の医師
and cdaDocument 0..1 MS   // CDA形式で作成された文書データ
and problem 1..* MS  // 傷病名・主訴　（様式11 傷病名）Condition
and referralPurpose 1..1 MS  // 紹介目的　　（様式11 紹介目的）Encounter　
and pastIllness 1..* MS // 既往歴　（様式11 既往歴および家族歴）Condition
and pastIllnessWithFamilyHistoryNote 1..* MS // 様式11 既往歴および家族歴 DocumentReference
and presentIllness 1..* MS // 現病歴 (様式11 症状経過および検査結果）Condition 
and presentIllnessNote 1..* MS // 様式11 症状経過および検査結果　DocumentReference 
and allergy 1..* MS // アレルギー・薬剤禁忌情報　AllergyIntolerance
and allergyNote 1..* MS // アレルギー・薬剤禁忌情報　DocumentReference 
and familyHistory 0..* MS   // 家族歴　FamilyMemberHistory
and physicalExams 1..* MS   // 身体所見 Observation
and immunization 0..* MS    // 予防接種 
and surgicalProcedure 0..* MS
and clinicalCourse 0..* MS  // 診療経過　（様式11 治療経過）DocumentReference
and carePlan 0..* MS
and medicalDeviceUse 0..* MS
and advancedDirective 0..* MS
and researchSubject 0..* MS
and communication 0..* MS   // 備考（様式11 備考）
and medicationRequest 0..* MS   // 処方オーダ
and medicationStatement 0..* MS  // 現在の処方　（様式11 現在の処方）　medicationStatement
and medicationNote 0..* MS  // 現在の処方（非構造的情報）（様式11 現在の処方）DocumentReference
and medicalDevice 0..* MS   // 医療機器
and imageStudy 0..* MS  // 画像検査結果
and diagReport 0..* MS  // 診断報告書
and researchStudy 0..* MS   // 臨床研究参加情報
and relatedPerson 0..* MS   // 関係者情報
and binaryData 0..* MS  // その他の添付バイナリーデータ

* entry[composition].resource only JP_Composition_eReferral // Bundleに含まれる全リソースエントリの参照リスト
* entry[patient].resource MS // 患者情報エントリ Composition.subject
* entry[authorisedAuthor] 1..1 MS 
* entry[authorisedAuthor].resource MS     // 文書作成者  Composition.author
* entry[authorOrganization].resource MS  // 文書作成機関 authorisedAuthorから、またはauthotDepartmentOfOrganizationから参照される
* entry[authorDepartmentOfOrganization].resource MS  // 文書作成者の診療科　authorOrganization　を参照する
* entry[custodianOrganization].resource MS  // 文書管理機関 authorisedAuthorから参照される


* entry[encounterOnDocument].resource only JP_Encounter   // この診療情報提供書を作成する元となった当該医療機関での受診情報 Composition.encounter
//* entry[condition].resource only JP_Encounter // 入院期間中の診断情報

/*
* entry[healthInsurancePublic].resource only JP_Coverage_eReferral_insurance
* entry[publicPayment].resource only JP_Coverage_eReferral_publicPayment
* entry[commonPayerOrganization].resource only JP_Organization_eReferral_coveragePayer
* entry[custodianDepartmentOfOrganization].resource only JP_Organization_eReferral_departmentOfIssuer
* entry[authorisedAuthorRole].resource only JP_PractitionerRole_eReferral_author
*/

* entry[referralToOrganizaiton].resource only JP_Organization_eClinicalSummary
* entry[referralToOrganizaiton] ^short = "紹介先医療機関"
* entry[referralToOrganizaiton] ^definition = "紹介先医療機関"

* entry[referralToDepartment].resource only JP_Organization_eClinicalSummary_department
* entry[referralToDepartment] ^short = "紹介先医療機関の診療科"
* entry[referralToDepartment] ^definition = "紹介先医療機関の診療科"

* entry[referralToDoctor].resource only JP_Practitioner_eClinicalSummary
* entry[referralToDoctor] ^short = "紹介先医師"
* entry[referralToDoctor] ^definition = "紹介先医師"

* entry[referralFromOrganizaiton].resource only JP_Organization_eClinicalSummary
* entry[referralFromOrganizaiton] ^short = "紹介元医療機関"
* entry[referralFromOrganizaiton] ^definition = "紹介元医療機関"

* entry[referralFromDepartment].resource only JP_Organization_eClinicalSummary_department
* entry[referralFromDepartment] ^short = "紹介元医療機関の診療科"
* entry[referralFromDepartment] ^definition = "紹介元医療機関の診療科"

* entry[referralFromDoctor].resource only JP_Practitioner_eClinicalSummary
* entry[referralFromDoctor] ^short = "紹介元医師"
* entry[referralFromDoctor] ^definition = "紹介元医師"

* entry[cdaDocument].resource only JP_DocumentReference_CDAdocument
* entry[cdaDocument] ^short = "CDA規約文書ファイルへの参照"
* entry[cdaDocument] ^definition = "CDA規約文書ファイルへの参照"

* entry[referralPurpose].resource only JP_Encounter_eClinicalSummary
* entry[referralPurpose] ^short = "必須。紹介先で予定している受診を記述したEncounterリソースを参照"
* entry[referralPurpose] ^definition = "紹介先で予定している受診を記述したEncounterリソースを参照。"

* entry[problem].resource only JP_Condition_eClinicalSummary
* entry[problem] ^short = "必須。傷病名・主訴／現病歴／既往歴を１個以上必ず記述する。"
* entry[problem] ^definition = "必須。傷病名・主訴／現病歴／既往歴を１個以上必ず記述する。1つにつき1つのConditionで記述されたものを参照する。"

* entry[allergy].resource only JP_AllergyIntolerance_eClinicalSummary
* entry[allergy] ^short = "アレルギー・不耐性反応情報を記述したAllergyIntoleranceリソースを参照"
* entry[allergy] ^definition = "アレルギー・不耐性反応情報を記述して参照する。"

* entry[familyHistory].resource only JP_FamilyMemberHistory
* entry[familyHistory] ^short = "家族歴情報を記述したFamilyMemberHistoryリソースを参照"
* entry[familyHistory] ^definition = "家族歴情報情報を記述して参照する。"

* entry[physicalExams].resource only JP_Observation_Common_eClinicalSummary
* entry[physicalExams] ^short = "身体所見／感染症情報／社会歴・生活習慣情報／検査結果を記述したObservationリソースを参照"
* entry[physicalExams] ^definition = "身体所見／感染症情報／社会歴・生活習慣情報／検査結果を記述して参照する。"

* entry[immunization].resource only JP_Immunization_eClinicalSummary
* entry[immunization] ^short = "予防接種歴情報を記述したImmunizationリソースを参照"
* entry[immunization] ^definition = "予防接種歴情報を記述して参照する。"

* entry[surgicalProcedure].resource only JP_Procedure_eClinicalSummary
* entry[surgicalProcedure] ^short = "手術処置/輸血歴情報を記述したProcedureリソースを参照"
* entry[surgicalProcedure] ^definition = "手術処置/輸血歴情報を記述して参照する。"

* entry[medicationStatement].resource only JP_MedicationStatement
* entry[medicationStatement] ^short = "投薬指示情報を記述したMedicationStatementリソースを参照"
* entry[medicationStatement] ^definition = "投薬指示情報を記述して参照する。"

* entry[medicationRequest].resource only JP_MedicationRequest
* entry[medicationRequest] ^short = "処方情報を記述したMedicationStatementリソースを参照"
* entry[medicationRequest] ^definition = "処方情報を記述して参照する。"

* entry[clinicalCourse].resource only JP_DocumentReference_eClinicalSummary
* entry[clinicalCourse] ^short = "必須。臨床経過を記述したDocumentReferenceリソースを参照"
* entry[clinicalCourse] ^definition = "臨床経過を記述して参照する。"

* entry[carePlan].resource only JP_CarePlan_eClinicalSummary
* entry[carePlan] ^short = "診療方針指示を記述したCarePlanリソースを参照"
* entry[carePlan] ^definition = "診療方針指示を記述して参照する。"

* entry[medicalDeviceUse].resource only JP_DeviceUseStatement
* entry[medicalDeviceUse] ^short = "医療機器の使用状況を記述したDeviceUseStatementリソースを参照"
* entry[medicalDeviceUse] ^definition = "医療機器の使用状況を記述したDeviceUseStatementリソースを参照する。"

* entry[medicalDevice].resource only JP_Device
* entry[medicalDevice] ^short = "医療機器情報を記述したDeviceリソースを参照"
* entry[medicalDevice] ^definition = "医療機器情報を記述したDeviceリソースを参照する。"

* entry[imageStudy].resource only JP_ImagingStudy_Radiology
* entry[imageStudy] ^short = "画像検査情報を記述したImagingStudyリソースを参照"
* entry[imageStudy] ^definition = "画像検査医療機器情報を記述したImagingStudyリソースを参照する。"

* entry[diagReport].resource only JP_DiagnosticReport_Common
* entry[diagReport] ^short = "診断レポート情報を記述したDiagnosticReportリソースを参照"
* entry[diagReport] ^definition = "診断レポート情報を記述したDiagnosticReportリソースを参照する。"


* entry[advancedDirective].resource only JP_Consent
* entry[advancedDirective] ^short = "事前指示を記述したConcentリソースを参照"
* entry[advancedDirective] ^definition = "事前指示を記述して参照する。"

* entry[researchSubject].resource only JP_ResearchSubject
* entry[researchSubject] ^short = "臨床研究参加情報者を記述したResearchSubject_リソースを参照"
* entry[researchSubject] ^definition = "臨床研究参加者情報を記述して参照する。"

* entry[researchStudy].resource only JP_ResearchStudy
* entry[researchStudy] ^short = "臨床研究情報を記述したResearchStudyリソースを参照"
* entry[researchStudy] ^definition = "臨床研究情報を記述して参照する。"

* entry[relatedPerson].resource only JP_RelatedPerson
* entry[relatedPerson] ^short = "親族情報を記述したRelatedPersonリソースを参照"
* entry[relatedPerson] ^definition = "親族情報を記述して参照する。"

* entry[binaryData].resource only JP_Binary
* entry[binaryData] ^short = "各種備考参照情報を記述したBinaryリソースを参照"
* entry[binaryData] ^definition = "各種備考参照情報を記述して参照する。"
