Profile: JP_Bundle_eReferral
Parent: JP_Bundle_CCLIX
Id: JP-Bundle-eReferral
Description: "診療情報提供書のBundle Documentのプロファル。"
* ^url = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"
* ^status = #draft
* . ^short = "Contains a collection of resources リソース集合を含む文書バンドル"
* . ^definition = "A container for a collection of resources.\r\nリソース集合のためのコンテナ\r\n診療情報交換のための文書形式のバンドルの共通プロファイル"

* total ..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

* entry contains

//    medicationRequest 0..*  MS and
    communication 0..* MS 
and medicationRequest 0..* MS
and authorOrganization 0..1 MS // 文書作成機関
and authotDepartmentOfOrganization 0..1 MS // 文書作成者の診療科
and referralOrganizaiton 0..2 MS
and referralDepartment 0..2 MS
and referralDoctor 0..2 MS
and cdaDocument 0..1 MS
and referralPurpose 0..1 MS
and problem 0..* MS
and allergy 0..* MS
and familyHistory 0..* MS
and physicalExams 0..* MS
and immunization 0..* MS
and surgicalProcedure 0..* MS
and medication 0..* MS
and clinicalCourse 0..* MS
and carePlan 0..* MS
and medicalDevice 0..* MS
and advancedDirective 0..* MS
and researchCollabo 0..* MS

* entry[composition].resource only JP_Composition_eReferral // Bundleに含まれる全リソースエントリの参照リスト
* entry[patient].resource MS // 患者情報エントリ Composition.subject
* entry[authorisedAuthor] 1..1 MS 
* entry[authorisedAuthor].resource MS     // 文書作成者  Composition.author
* entry[authorOrganization].resource MS  // 文書作成機関 authorisedAuthorから、またはauthotDepartmentOfOrganizationから参照される
* entry[authotDepartmentOfOrganization].resource MS  // 文書作成者の診療科　authorOrganization　を参照する
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

* entry[referralOrganizaiton].resource only JP_Organization_eClinicalSummary_issuer
* entry[referralOrganizaiton] ^short = "紹介先/元医療機関"
* entry[referralOrganizaiton] ^definition = "紹介先/元医療機関"

* entry[referralDepartment].resource only JP_Organization_eClinicalSummary_departmentOfIssuer
* entry[referralDepartment] ^short = "紹介先/元医療機関の診療科"
* entry[referralDepartment] ^definition = "紹介先/元医療機関の診療科"

* entry[referralDoctor].resource only JP_Practitioner_eClinicalSummary_author
* entry[referralDoctor] ^short = "紹介先/元医師"
* entry[referralDoctor] ^definition = "紹介先/元医師"

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

* entry[medication].resource only JP_MedicationRequest
* entry[medication] ^short = "投薬指示情報を記述したMedicationRequestリソースを参照"
* entry[medication] ^definition = "投薬指示情報を記述して参照する。"

* entry[clinicalCourse].resource only JP_DocumentReference_eClinicalSummary
* entry[clinicalCourse] ^short = "必須。臨床経過を記述したDocumentReferenceリソースを参照"
* entry[clinicalCourse] ^definition = "臨床経過を記述して参照する。"

* entry[carePlan].resource only JP_CarePlan_eClinicalSummary
* entry[carePlan] ^short = "診療方針指示を記述したCarePlanリソースを参照"
* entry[carePlan] ^definition = "診療方針指示を記述して参照する。"

* entry[medicalDevice].resource only JP_DeviceUseStatement_eClinicalSummary
* entry[medicalDevice] ^short = "医療機器情報を記述したDocumentReferenceリソースを参照"
* entry[medicalDevice] ^definition = "医療機器情報を記述して参照する。"

* entry[advancedDirective].resource only JP_Consent_eClinicalSummary
* entry[advancedDirective] ^short = "事前指示を記述したConcentリソースを参照"
* entry[advancedDirective] ^definition = "事前指示を記述して参照する。"

* entry[researchCollabo].resource only JP_ResearchSubject_eClinicalSummary
* entry[researchCollabo] ^short = "臨床研究参加情報を記述したDocumentReferenceリソースを参照"
* entry[researchCollabo] ^definition = "臨床研究参加情報を記述して参照する。"
