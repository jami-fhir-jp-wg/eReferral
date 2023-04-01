


Profile: JP_Encounter_eClinicalSummary
Parent: JP_Encounter
Id: JP-Encounter-eClinicalSummary
Description: "診療情報提供では、紹介理由を記述するEncouter情報　JP_Encounterの派生プロファイル。診療サマリーではサマリー対象となる受診や入院に関する情報。"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Encounter_eClinicalSummary"
* ^status = #active
* ^date = "2022-11-07"
* status = #finished (exactly)
* status ^definition = "finished の固定値を設定する。"
* status MS
* class ^definition = "外来（外来）、入院、救急、在宅医療、その他の地域差による患者Encouterの分類を表す概念。"
* class MS
* class.system 1.. MS
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* class.system ^definition = "コード体系v3.ActEncounterCodeを識別するURI。固定値。"
* class.code 1.. MS
* class.code from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (extensible)
* class.code ^definition = "AMB:外来　EMER:救急　HH:在宅ケア    IMP:入院または入院中    ACUTE: 入院中臨時     NONAC:入院中定時   PRENC:予定入院時    VR:リモート診療"
* class.display ^definition = "AMB:外来　EMER:救急　HH:在宅ケア    IMP:入院または入院中    ACUTE: 入院中臨時     NONAC:入院中定時   PRENC:予定入院時    VR:リモート診療"
* class.display MS
* classHistory ..1

* reasonCode ..* MS
* reasonCode ^short = "入院時主訴・入院理由。紹介する理由（主訴・目的）"
* reasonCode ^definition = "コードで記述できる場合にそのコード記述。system値はMEDIS標準病名マスター病名交換用コードを使用できる。text要素にフリーテキストで記述してもよい。"
* reasonCode.coding.system MS
* reasonCode.coding.code MS
* reasonCode.text MS
