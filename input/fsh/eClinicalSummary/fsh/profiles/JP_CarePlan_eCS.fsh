Profile:        JP_CarePlan
Parent:			CarePlan
Id:             JP-CarePlan
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_CarePlan"


Profile:        JP_CarePlan_eClinicalSummary
Parent:			JP_CarePlan
Id:             JP-CarePlan-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_CarePlan_eClinicalSummary"
* ^status = #active
* ^date = "2023-03-31"

* meta.lastUpdated 1.. MS

* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^short = "generated"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.status = #generated
* text.div MS
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式"
* identifier 0..1 MS
* identifier.system 1..1 MS
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value 1..1 MS
* status 1..1 MS
* status ^short = "プランのステータス"
* status ^definition = "\"http://hl7.org/fhir/request-status\" コードから　draft | active | on-hold | revoked | completed | entered-in-error | unknown　など。
案、有効、保留、取消、完了、エラー、不明"
* status = #active
* intent 1..1 MS
* intent ^short = "趣旨区分"
* intent ^definition = "趣旨区分 \"http://hl7.org/fhir/request-intent\" proposal | plan | order | option 提案|計画|指示|オプション 入院時または退院時の方針では、内容によりいずれにもなりうるので、適切なコードを適宜選択して使用する。"
* intent = #plan
* category 0..1 MS
* category ^short = "プランのタイプ"
* category ^definition = "hospital-plan または discharge-plan"
* category.coding from http://jpfhir.jp/fhir/CarePlan/ValueSet/category
* title 1..1 MS
* title ^short = "プランの課題名称"
* title ^definition = "\"入院時方針\"　または　\"退院時の方針\" その他の課題名称でも構わない。"
* description   1..1 MS
* description ^short = "プランの内容サマリー"
* description ^definition = "ここに具体的な内容を文字列で記述する。1MB以内。"
* subject   1..1    MS
* subject ^short = "患者のあらわずPatientリソースへの参照"
* subject ^definition = "患者のあらわずPatientリソースへの参照"
* subject  only Reference(JP_Patient)
* encounter  0..1    MS
* encounter ^short = "対象となる入院情報または退院情報を含む入院詳細情報"
* encounter ^definition = "対象となる入院情報または退院情報を含む入院詳細情報"
* encounter   only Reference(JP_Encounter)
* period    1..1 MS
* period ^short = "このプランがカバーする期間"
* period ^definition = "このプランがカバーする期間"
* period.start 1..1 MS
* period.start ^short = "入院日または、退院日または退院日以降のこのプランのカバー開始日付"
* period.start ^definition = "入院日または、退院日または退院日以降のこのプランのカバー開始日付"
* period.end 0..1 MS
* period.end ^short = "退院日または退院日以降のこのプランのカバー終了日付。通常省略されるが、ひき続き、次のプランに引き継ぐ場合には終了日付が入る。"
* period.end ^definition = "退院日または退院日以降のこのプランのカバー終了日付。通常省略されるが、ひき続き、次のプランに引き継ぐ場合には終了日付が入る。"
* created   0..1 MS
* created ^short = "このプランが最初に作成された日付"
* created ^definition = "このプランが最初に作成された日付"
* author 0..1 MS
* author ^short = "このプランの責任者情報への参照"
* author ^definition = "このプランの責任者情報への参照"
* author   only Reference(JP_Practitioner)
* contributor ..0 MS
* careTeam ..0 MS
