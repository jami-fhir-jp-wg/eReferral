// ==================================================
//   Profile 定義 電子カルテ共有サービス用
//   傷病名情報 リソースタイプ:Condition
//   親プロファイル:JP_Condition_eCS
// ==================================================
Profile:        JP_Condition_CLINS_eCS
Parent:			JP_Condition_eCS
Id:             JP-Condition-CLINS-eCS
Title:  "CLINS電子カルテ情報共有サービス用:JP_Condition_CLINS_eCS"
Description: "CLINS 電子カルテ共有サービス用  Conditionリソース（傷病名情報）プロファイル 。JP_Condition_eCSからの派生プロファイル。"

* extension[eCS_InstitutionNumber] 1..1 MS

* ^url = $JP_Condition_CLINS_eCS
* ^status = #active
* ^date = "2023-10-04"
* insert toplevel_short_definition("診療情報における傷病名情報の格納に使用する")
* . ^comment = "このプロファイルは、電子カルテ情報共有サービスに送信するために適合したプロファイルである。薬剤禁忌情報かアレルギー情報かの区別はcategory要素がmedicationかそれ以外かによる。"

* meta.profile 1..1 MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLを指定する。http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Condition_eCS")

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

* meta.tag[uninformed] = $JP_ehrshrs_indication_CS#UNINFORMED
  * insert relative_short_definition("６情報作成において未告知情報または未説明フラグを設定する場合に使用（本リソース種別で使用することが許可されているか、あるいは設定した情報が利用されるかどうかについては、電子カルテ情報共有サービスの運用仕様によって確認することが必要）。" )
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * code 1..1 MS
    * insert relative_short_definition("未告知フラグ　固定値 UNINFORMEDを設定する。")


// encounter、recorder、は最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains
    encounter 0..1 MS
    and recorder 0..1 MS

* contained[encounter] only  JP_Encounter
  * insert relative_short_definition("診療情報における入院外来受診情報をコンパクトに格納したEncounterリソース")
  * ^comment = "encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。"

* contained[recorder] only  JP_Practitioner
  * insert relative_short_definition("診療情報における記録医療者情報をコンパクトに格納したPractitionerリソース")
  * ^comment = "recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素だけが含まれればよい。"




// 患者情報
* subject ^comment = "電子カルテ共有サービスでは、別途BundleリソースでPatientリソースが送信されているので、その被保険者個人識別子を明示することにより患者を参照する。"
* subject.identifier.system = $JP_Insurance_memberID (exactly)



* onset[x] 0..1 MS
* onset[x]  ^short = "この傷病名情報が同定された時期"
* onset[x]  ^definition = "患者にこの傷病が出現した時期、あるいはなんらかのエビデンスによりこの傷病が患者にあると確認できた時期を記述する。電子カルテシステムの病名開始日をdateTime型で記述するのが一般的な方法である。３文書６情報の作成では、病名開始日をdateTime型で記述するため、onsetDateTime要素を使用する。"
* onsetDateTime 1..1 MS



