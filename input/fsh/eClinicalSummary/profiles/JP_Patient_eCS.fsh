// ==================================================
//   Profile 定義 診療情報・サマリー汎用
//   このプロファイルは、電子カルテ情報共有サービスに送信するためのプロファイルではない。
//   電子カルテ情報共有サービスに送信する場合には、このプロファイルから派生した別の専用プロファイルを用いること。
//   患者情報 リソースタイプ Patient
//   親プロファイル:JP_MedicationRequest
// ==================================================

Profile: JP_Patient_eCS
Parent: JP_Patient
Id: JP-Patient-eCS
Title: "eCS:JP_Patient_eCS"
Description: "eCS 診療情報・サマリー汎用 Patientリソース（患者情報）プロファイル"


* ^url = $JP_Patient_eCS
* ^status = #active

* meta.lastUpdated 0.. MS
* meta.lastUpdated ^short = "最終更新日"
* meta.lastUpdated ^definition = "この患者情報の内容がサーバ上で最後に格納または更新された日時、またはこのFHIRリソースが生成された日時"

* name 1.. MS
* name.family 1.. MS
* name.given 1.. MS

* gender 1.. MS
* birthDate 1.. MS
* address 1..1 MS
* address ^definition = "患者の住所。必須。"

* address.text 1.. MS
* address.city 1.. MS
* address.state 1.. MS


