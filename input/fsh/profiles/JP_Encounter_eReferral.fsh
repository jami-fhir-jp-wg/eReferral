Profile: JP_Encounter_eReferral
Parent: JP_Encounter
Id: JP-Encounter-eReferral
Description: "処方発行時の入退院受診情報などEncouter情報　JP_Encounterの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Encounter_eReferral"
* ^status = #draft
* text.status ^definition = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\r\\nXHTML形式。"
* status = #finished (exactly)
* status ^definition = "finished の固定値を設定する。"
* status MS
* class ^definition = "Concepts representing classification of patient encounter such as ambulatory (outpatient), inpatient, emergency, home health or others due to local variations.\r\n外来（外来）、入院、救急、在宅医療、その他の地域差による患者Encouterの分類を表す概念。"
* class MS
* class.system 1.. MS
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* class.system ^definition = "コード体系v3.ActEncounterCodeを識別するURI。固定値。"
* class.code 1.. MS
* class.code from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (extensible)
* class.code ^definition = "AMB:外来　EMER:救急　HH:在宅ケア    IMP:入院または入院中    ACUTE: 入院中臨時     NONAC:入院中定時   PRENC:予定入院時    VR:リモート診療"
* class.display ^definition = "AMB:外来　EMER:救急　HH:在宅ケア    IMP:入院または入院中    ACUTE: 入院中臨時     NONAC:入院中定時   PRENC:予定入院時    VR:リモート診療"
* class.display MS
* classHistory ..0
* type ..0
* serviceType ..0
* priority ..0
* subject ..0
* episodeOfCare ..0
* basedOn ..0
* participant ..0
* appointment ..0
* period ..0
* length ..0
* reasonCode ..0
* reasonReference ..0
* diagnosis ..0
* account ..0
* hospitalization ..0
* location ..0
* serviceProvider ..0
* partOf ..0