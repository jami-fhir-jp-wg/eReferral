// ==================================================
//   Profile 定義 電子カルテ共有サービス用
//   アレルギー情報／薬剤禁忌 リソースタイプ:AllergyIntolerance
//   親プロファイル:JP_AllergyIntolerance_eCS
// ==================================================

Profile:        JP_AllergyIntolerance_CLINS_eCS
Parent:			JP_AllergyIntolerance_eCS
Id:             JP-AllergyIntolerance-CLINS-eCS
Title:  "CLINS電子カルテ情報共有サービス用:JP_AllergyIntolerance_CLINS_eCS"
Description: "CLINS 電子カルテ共有サービス用 AllergyIntoleranceリソース（アレルギー情報／薬剤禁忌）プロファイル。 JP_AllergyIntolerance_eCSからの派生プロファイル。"

* obeys warning-medication-allergy


* extension[eCS_InstitutionNumber] 1..1 MS

* ^url = $JP_AllergyIntolerance_CLINS_eCS
* ^status = #active
* ^date = "2023-10-22"
* insert toplevel_short_definition("診療情報におけるアレルギー情報／薬剤禁忌の格納に使用する")
* . ^comment = "このプロファイルは、電子カルテ情報共有サービスに送信するために適合したプロファイルである。薬剤禁忌情報かアレルギー情報かの区別はcategory要素がmedicationかそれ以外かによる。"



* meta.profile 1..1 MS
  * insert relative_short_definition("準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。http://jpfhir.jp/fhir/clins/StructureDefinition/JP_AllergyIntolerance_eCS")

* meta.tag  ^slicing.discriminator.type = #value
* meta.tag  ^slicing.discriminator.path = "$this"
* meta.tag  ^slicing.rules = #open
* meta.tag contains lts 0..1 MS

* meta.tag[lts] = $JP_ehrshrs_indication_CS#LTS
  * insert relative_short_definition("電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に使用する。")
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * code 1..1 MS
    * insert relative_short_definition("長期保存情報フラグ　固定値 LTSを設定する。")

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
  * insert relative_short_definition("診療情報における患者情報をコンパクトに格納したPractitionerリソース")
  * ^comment = "recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素だけが含まれればよい。"


* category 0.. MS  // 薬剤禁忌情報の場合は、必須 
* category ^comment = "電子カルテ情報共有サービスでは、薬剤禁忌情報として本リソース種別を使用する場合には、必ず本要素は\"medication\"として存在しなければならず、criticality要素は\"high\"を設定しなければならない。これ以外の場合には、本リソースの情報は薬剤禁忌以外のアレルギー情報として取り扱われる。"

* criticality ^comment = "電子カルテ情報共有サービスでは、薬剤禁忌情報として本リソース種別を使用する場合には、category要素の記述を参照すること。" 


// 患者情報
* patient ^comment = "電子カルテ共有サービスでは、別途BundleリソースでPatientリソースが送信されているので、その被保険者個人識別子を明示することにより患者を参照する。"
* patient.identifier.system = $JP_Insurance_memberID (exactly)



* asserter ^comment = "この情報は記述しなくてよいが、記述する場合には display子要素だけとし、別のリソースへの参照をしない。"
