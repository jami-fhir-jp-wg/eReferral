
Profile: JP_Bundle_CLINS
Parent: Bundle
Id: JP-Bundle-CLINS
Title: "CLINS電子カルテ情報共有サービス用:JP_Bundle_CLINS"
Description: "CLINS 電子カルテ情報共有サービスへの6情報送信用 Bundleリソース プロファイル"
* ^url = $JP_Bundle_CLINS
* ^status = #active
* . ^short = "電子カルテ情報共有サービスへの6情報送信用 Bundleリソース"
* . ^definition = "電子カルテ情報共有サービスへの6情報送信用 Bundleリソース"

* obeys bundle-profile-is-JP-Bundle-CLINS

* obeys first-bundle-entry-is-Patient
* obeys patients-profile-is-JP-Patient-CLINS-eCS

* obeys valid-valuePart0-bundleIdenfifier
* obeys valid-valuePart1-bundleIdenfifier
* obeys valid-valuePart2-0-bundleIdenfifier
* obeys valid-valuePart2-1-bundleIdenfifier
* obeys valid-valuePart2-2-bundleIdenfifier
* obeys valid-valuePart2-3-bundleIdenfifier
* obeys valid-valuePart2-4-bundleIdenfifier
* obeys valid-valuePart3-bundleIdenfifier

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLを指定する。http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS")
//* meta.profile = $JP_Bundle_CLINS

* meta.tag  ^slicing.discriminator.type = #value
* meta.tag  ^slicing.discriminator.path = "system"
* meta.tag  ^slicing.rules = #open
* meta.tag contains resourceType 1..1 MS
  * insert relative_short_definition("CLINSでのBundleリソースに含まれる６情報リソースカテゴリーをmeta.tag要素に記述する。")
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS　を設定する。" )
  * code 1..1 MS
    * insert relative_short_definition("Bundleリソースに含まれる６情報リソースカテゴリーのいずれかをhhttp://jpfhir.jp/fhir/clins/ValueSet/BundleResourceType_VSのValuseSetから設定する。具体的には、\"AllergyIntolerance\"、\"Condition\"、\"Observation\"、\"MedicationRequest\"　のいずれかの値を設定する。")

* meta.tag[resourceType].system = $JP_CLINS_BundleResourceType_CS
* meta.tag[resourceType].code from $JP_CLINS_BundleResourceType_VS

* identifier 1.. MS
* identifier ^short = "この文書Bundleの固定識別子。Bundle作成時にシステムが設定する。"
* identifier ^definition = "Bundleリソースのidentifier要素は、電子カルテ情報共有サービス側で保存される。送信側は、後続の送信においてこのidentifierを指定することで、受信側は過去に受信したBundleリソースを特定し、それに含まれていた全データについて削除、更新などの処理を行うためにこれを使用する。"
* identifier ^comment = "Bundleリソースのidentifier要素は以下の通りとする。\r\n
この仕様を満たすidentifierに加えて、これとは異なるsystem値をもつidentifierは複数存在しても構わない。\r\n
Bundle.identifier.system : system値として、”http://jpfhir.jp/fhir/clins/bundle-identifier” を設定する。\r\n
Bundle.identifier.value : 以下に記載する[報告単位識別ID]　を設定する。\r\n[報告単位識別ID]： 次の３つの文字列を半角ハット記号（^）で連携した文字列。\r\n
保険医療機関番号10桁：\r\n
　（内訳：都道府県番号２桁、点数表コード（医療機関区分）１桁、医療機関番号７桁）\r\n
被保険者個人識別子：\r\n
　６情報送信仕様に記載の「6:被保険者個人識別子の格納」の仕様に従う。\r\n
報告単位のデータを医療機関のシステムとして医療機関内で一意に識別できる粒度のID文字列：\r\n
　　当該システムが当該患者データの中で一意性を保証できるよう生成した半角文字列（英大文字、数字、ハイフン記号のみ可）\r\n
　　最大128文字とすること。"

* identifier.system 1.. MS
* identifier.system = "http://jpfhir.jp/fhir/clins/bundle-identifier" (exactly)
* identifier.value 1.. MS

* type = #collection (exactly)
* type ^definition = "このバンドルの目的コード。本プロファイルでは collection 固定とする。\r\n（document | message | transaction | transaction_response | batch | batch_response | history | searchset | collection）"
* type MS
* timestamp 1.. MS
* timestamp ^short = "このバンドルリソースのインスタンスが作成された日時。"
* timestamp ^definition = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。　例：\"2021-02-01T13:28:17.239+09:00\""

/*
* link ^short = "このBundleが格納するPatientリソース以外のリソースタイプ。"
* link ^definition = "このBundleが6情報リソース（4種類）のどれを格納するためのものかを、そのリソースのprofile　URLにより記述する。"
* link.relation = #profile
* link ^slicing.discriminator.type = #value
* link ^slicing.discriminator.path = "url"
* link ^slicing.rules = #closed
* link contains 
    allergyIntolerance 0..1 
 and condition 0..1
 and medicationRequest 0..1
 and observationLaboResult 0..1

* link[allergyIntolerance].url = $JP_AllergyIntolerance_CLINS_eCS (exactly)
* link[condition].url = $JP_Condition_CLINS_eCS (exactly)
* link[medicationRequest].url = $JP_MedicationRequest_CLINS_eCS (exactly)
* link[observationLaboResult].url = $JP_Observation_LabResult_CLINS_eCS (exactly)
*/

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.ordered = true
* entry ^slicing.rules = #closed
* entry contains
    patient 1..1 MS  //  患者情報
 and allergyIntolerance 0..
 and condition 0..
 and medicationRequest 0..
 and observationLaboResult 0..

* entry ^short = "このBundleが格納するリソースの情報。"
* entry.extension ..0
* entry.modifierExtension ..0
* entry.link ..0 MS
* entry.search ..0
* entry.request ..0
* entry.response ..0

* entry[patient] ^short = "Patientリソース"
* entry[patient] ^definition = "患者情報"


* entry[patient].resource 1.. MS
* entry[patient].resource only $JP_Patient_CLINS_eCS

* entry[allergyIntolerance] ^short = "AllergyIntoleranceリソース"
* entry[allergyIntolerance] ^definition = "アレルギー情報／薬剤禁忌情報"
* entry[allergyIntolerance].resource 1.. MS
* entry[allergyIntolerance].resource only $JP_AllergyIntolerance_CLINS_eCS

* entry[condition] ^short = "Conditionリソース"
* entry[condition] ^definition = "傷病名情報"
* entry[condition].resource 1.. MS
* entry[condition].resource only $JP_Condition_CLINS_eCS

* entry[medicationRequest] ^short = "MedicationRequestリソース"
* entry[medicationRequest] ^definition = "処方情報"
* entry[medicationRequest].resource 1.. MS
* entry[medicationRequest].resource only $JP_MedicationRequest_CLINS_eCS

* entry[observationLaboResult] ^short = "Observationリソース"
* entry[observationLaboResult] ^definition = "検体検査結果／感染症情報"
* entry[observationLaboResult].resource 1.. MS
* entry[observationLaboResult].resource only $JP_Observation_LabResult_CLINS_eCS
