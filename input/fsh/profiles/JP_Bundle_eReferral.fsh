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

* entry[medicationRequest] ^short = "処方情報エントリ"
* entry[medicationRequest] ^definition = "処方情報エントリ。医薬品の数だけ出現する。"
* entry[medicationRequest].fullUrl 1.. MS
* entry[medicationRequest].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[medicationRequest].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID。"
* entry[medicationRequest].resource only JP_MedicationRequest
* entry[medicationRequest].resource ^short = "MedicationRequestリソースのインスタンス本体"
* entry[medicationRequest].resource ^definition = "MedicationRequestリソースのインスタンス本体。"

* entry[communication] ^short = "備考情報エントリ"
* entry[communication] ^definition = "備考情報エントリで処方箋全体の指示、明細単位での備考を記述するリソースへの参照。"
* entry[communication].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[communication].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[communication].fullUrl MS
* entry[communication].resource only Communication
* entry[communication].resource ^short = "Communicationrリソースのインスタンス本体"
* entry[communication].resource ^definition = "Communicationrリソースのインスタンス本体"
* entry[communication].search ..0
* entry[communication].request ..0
* entry[communication].response ..0
