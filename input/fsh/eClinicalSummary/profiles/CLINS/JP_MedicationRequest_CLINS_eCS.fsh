// ==================================================
//   Profile 定義 電子カルテ共有サービス用
//   処方オーダの１処方薬情報 リソースタイプ:MedicationRequest
//   親プロファイル:JP_MedicationRequest
// ==================================================
Profile: JP_MedicationRequest_CLINS_eCS
Parent: JP_MedicationRequest_eCS
Id: JP-MedicationRequest-CLINS-eCS
Title:  "CLINS電子カルテ情報共有サービス用:JP_MedicationRequest_CLINS_eCS"
Description: "CLINS 電子カルテ共有サービス用 MedicationRequestリソース（処方オーダの１処方薬情報）プロファイル。JP_MedicationRequest_eCSからの派生プロファイル。"

* extension[eCS_InstitutionNumber] 1..1 MS

* ^url = $JP_MedicationRequest_CLINS_eCS
* ^status = #active
* ^date = "2023-10-04"
* . ^short = "診療情報における処方オーダの１処方薬情報の格納に使用する"
* . ^definition = "診療情報・厚労省6情報などにおける処方オーダの１処方薬情報の格納に使用する"
* . ^comment = "このプロファイルは、電子カルテ情報共有サービスに送信するために適合したプロファイルである。"

* meta.profile 1..1 MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLを指定する。http://jpfhir.jp/fhir/clins/StructureDefinition/JP_MedicationRequest_CLINS_eCS　を設定する。")
  
* meta.tag  ^slicing.discriminator.type = #value
* meta.tag  ^slicing.discriminator.path = "$this"
* meta.tag  ^slicing.rules = #open
* meta.tag contains lts 0..1 MS
  and uninformed 0..1 MS

* meta.tag[lts] = $JP_ehrshrs_indication_CS#LTS
  * insert relative_short_definition("電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に使用する。")
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * code 1..1 MS
    * insert relative_short_definition("長期保存情報フラグ　固定値 LTSを設定する。")

// Patinet、Specimen、オーダ医療機関、は最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains 
  /* patient 1..1
    and */
    encounter 0..1
    and author 0..1
    and order 0..1
/*
* contained[patient] only  JP_Patient_CLINS_eCS
  * insert relative_short_definition("診療情報における患者情報をコンパクトに格納したPatientリソース")
  * ^comment = "patient要素から参照される場合には、そのJP_Patientリソースの実体。JP_Patientリソースにおける必要最小限の要素だけが含まれればよい。３文書６情報の作成では、JP_Patientリソースのcontainedは必須。"
*/
* contained[encounter] only  JP_Encounter
  * insert relative_short_definition("診療情報における入院外来受診情報をコンパクトに格納したEncounterリソース")
  * ^comment = "encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。"

* contained[author] only  JP_Practitioner
  * insert relative_short_definition("診療情報における記録医療者情報をコンパクトに格納したPractitionerリソース")
  * ^comment = "recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素だけが含まれればよい。"

* contained[order] only  JP_ServiceRequest
  * insert relative_short_definition("診療情報におけるオーダ識別番号情報などをコンパクトに格納したServiceRequestリソース")
  * ^comment = "recorder要素から参照される場合には、そのJP_ServiceRequestリソースの実体。JP_ServiceRequestリソースにおける必要最小限の要素だけが含まれればよい。"

// 患者情報
* subject ^comment = "電子カルテ共有サービスでは、別途BundleリソースでPatientリソースが送信されているので、その被保険者個人識別子を明示することにより患者を参照する。"
* subject.identifier.system = $JP_Insurance_memberID (exactly)


