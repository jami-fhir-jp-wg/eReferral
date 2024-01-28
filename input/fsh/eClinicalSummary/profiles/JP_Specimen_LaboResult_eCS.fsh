Profile:        JP_Specimen_LaboResult_eCS_Contained
Parent:         JP_Specimen
Id:             JP-Specimen-eCS
Description:    "診療情報コアサマリー埋め込み用 Specimenリソース（検体検査の検体情報 ）プロファイル "
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Specimen_eCS_Contained"

* ^status = #active

* type 1..1 MS
* type ^short = "検体の材料コード。JLAC10材料コード（必須）とローカル材料コードを設定する。"
* type ^definition = "検体の材料コード。JLAC10材料コード（必須）とローカル材料コードを設定する。"
* type.coding ^binding.description = "JLAC10材料コード"
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains
    jlac10Coded 1..1 MS
  and localCoded 0..1 MS

* type.coding[jlac10Coded].system = $JP_Specimen_JLAC10_SpecimenCode_CS (exactly)
* type.coding[jlac10Coded].system ^short = "JLAC10材料コードでコード記述をする場合のsystem値（url)"
* type.coding[jlac10Coded].system ^definition = "JLAC10材料コードでコード記述をする場合のsystem値（url)で、未コード化コード999を使用する場合も同じsystem値。"

* type.coding[jlac10Coded].code from $JP_Specimen_JLAC10_SpecimenCode_VS (required)
* type.coding[jlac10Coded].code ^short = "JLAC10材料コード"
* type.coding[jlac10Coded].code ^definition = "JLAC10材料コード.もっとも近い材料コードを選択する。"
* type.coding[jlac10Coded].code ^comment = "適当なコードがない場合には、999（未コード化検体材料）を使用し、type.textに実際の検体材料名を設定する。"
* type.coding[jlac10Coded].display 0..1
* type.coding[jlac10Coded].display ^short = "JLAC10材料コードでコード記述をする場合のコードに対応する表示名。999の場合には「未コード化検体材料」を設定する。"

* type.coding[localCoded].system = $JP_ObservationLabSpecimenLocal_CS (exactly)    // その施設のローカルコード
* type.coding[localCoded].system ^short = "その施設固有の材料コードでコード記述をする場合のsystem値（url)"
* type.coding[localCoded].system ^definition = "その施設固有の材料コードでコード記述をする場合のsystem値（url)、施設によらず固定値とする。"
* type.coding[localCoded].display 0..1
* type.coding[localCoded].display ^short = "ローカル材料コードでコード記述をする場合の、そのコードに対応する表示名。"

* type.text 1..1
* type.text ^short = "検体材料名"
* type.text ^definition = "検体材料名。コードごとの表示名は、そのコード体系でのコードに対応する表示名であるのに対して、このテキストは当該医療機関のその検査で使用された材料の名称をコード化方法によらず設定する。"


* note 0..1 MS
  * text 1..1 MS
    * ^short = "自由記載の検体材料コメント"
    * ^definition = "自由記載の検体材料コメント"


