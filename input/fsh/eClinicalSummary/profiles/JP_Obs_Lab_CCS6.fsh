
// ==================================================
//   Profile 定義 FHIR臨床コア情報 Clinical-coreセット
//   検体検査結果 リソースタイプ:Observation
//   親プロファイル:JP_Observation_LabResult
//   このプロファイルはグループ化された検査項目を子供に持たず、
//   個々のひと組みの検査項目と結果だけを格納する.
//   バッテリ検査項目で、それ自体に検査結果がないObservation
//   は別のプロファイル　JP_Observation_LabBaterry_CCS　とする。
// ==================================================
Profile: JP_Observation_LabResult_CCS6
Parent: JP_Observation_LabResult
Id: jp-observation-labresult-ccs6
Title: "6FHIR臨床コア情報 Clinical-coreセット(厚労省6情報)のひとつ。検体検査結果プロファイル"
Description: "6FHIR臨床コア情報 Clinical-coreセットのひとつ。検体検査結果プロファイル。JP_Observation_LabResultの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/clinicalCoreSet/StructureDefinition/JP_Observation_LabResult_CCS6"
* ^status = #active
* ^date = "2023-05-27"


// OUL^R22.OBX[*]-11 結果状態
* status 1..1 MS

// OUL^R22.PV1
// * encounter ^definition = "この検査が行われた医療提供者と患者の接点に関する付帯情報。"

* hasMember MS

* derivedFrom ^definition = "この検査値の発生元である関連リソース。例えば他のObservation を受けて、本検査値が発生した場合など。"
