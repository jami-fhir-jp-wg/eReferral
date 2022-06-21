Profile: JP_Bundle_eReferral
Parent: JP_Bundle_CCLIX
Id: JP-Bundle-eReferral
Description: "処方情報のBundle Documentのプロファル。分割処方は別の分割情報処方用プロファイルを使用すること。"
* ^url = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"
* ^status = #draft
* . ^short = "Contains a collection of resources リソース集合を含む文書バンドル"
* . ^definition = "A container for a collection of resources.\r\nリソース集合のためのコンテナ\r\n診療情報交換のための文書形式のバンドルの共通プロファイル"
* type = #document (exactly)
* type ^definition = "このバンドルの目的コード。本プロファイルでは document 固定とする。\r\n（document | message | transaction | transaction_response | batch | batch_response | history | searchset | collection）"
* type MS
* timestamp 1.. MS
* timestamp ^short = "このバンドルリソースのインスタンスが作成された日時。"
* timestamp ^definition = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。　例：\"2021-02-01T13:28:17.239+09:00\""
* total ..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

* entry[composition].resource only JP_Composition_eReferral
* entry[patient].resource only JP_Patient_eReferral
* entry[encounterOnDocument].resource only JP_Encounter_eReferral
* entry[healthInsurancePublic].resource only JP_Coverage_eReferral_insurance
* entry[publicPayment].resource only JP_Coverage_eReferral_publicPayment
* entry[commonPayerOrganization].resource only JP_Organization_eReferral_coveragePayer
* entry[custodianOrganization].resource only JP_Organization_eReferral_issuer
* entry[custodianDepartmentOfOrganization].resource only JP_Organization_eReferral_departmentOfIssuer
* entry[authorisedAuthorRole].resource only JP_PractitionerRole_eReferral_author
* entry[authorisedAuthor].resource only JP_Practitioner_eReferral_author

* entry contains
    medicationRequest 0..*  MS and
    communication 0..* MS 

* entry[medicationRequest] ^short = "処方情報エントリ"
* entry[medicationRequest] ^definition = "処方情報エントリ。医薬品の数だけ出現する。"
* entry[medicationRequest].fullUrl 1.. MS
* entry[medicationRequest].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[medicationRequest].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID。"
* entry[medicationRequest].resource only JP_MedicationRequest_eReferral
* entry[medicationRequest].resource ^short = "MedicationRequestリソースのインスタンス本体"
* entry[medicationRequest].resource ^definition = "MedicationRequestリソースのインスタンス本体。"

* entry[communication] ^short = "備考情報エントリ"
* entry[communication] ^definition = "備考情報エントリで処方箋全体の指示、明細単位での備考を記述するリソースへの参照。"
* entry[communication].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[communication].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[communication].fullUrl MS
* entry[communication].resource only JP_Communication_eReferral
* entry[communication].resource ^short = "Communicationrリソースのインスタンス本体"
* entry[communication].resource ^definition = "Communicationrリソースのインスタンス本体"
* entry[communication].search ..0
* entry[communication].request ..0
* entry[communication].response ..0
