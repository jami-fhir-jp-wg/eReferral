Profile:        JP_FamilyMemberHistory_eCS
Parent:			JP_FamilyMemberHistory
Id:             JP-FamilyMemberHistory-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_FamilyMemberHistory_eCS"
* ^date = "2023-03-31"
* meta.lastUpdated 1.. MS
* status 1..1 MS
* status = #partial
* dataAbsentReason 0..1 MS      //この家族の情報がとれない理由コード
* dataAbsentReason ^short = "家族の情報がとれない理由コード"
* dataAbsentReason ^definition = "家族の情報がとれない理由コード"
* dataAbsentReason from http://hl7.org/fhir/ValueSet/history-absent-reason

* patient 1..1 MS
* patient ^short = "対象となる患者リソースへの参照。"
* patient ^definition = "対象となる患者リソースへの参照。"
* patient only Reference(JP_Patient)

* date 0..1 MS
* date ^short = "家族歴情報が取得された、または更新された日時。"
* date ^definition = "家族歴情報が取得された、または更新された日時。"
* date only dateTime

* name 0..1 MS
* name ^short = "この家族の名前。通称や患者からの呼び名でもよい"
* name ^definition = "この家族の名前。通称や患者からの呼び名でもよい"

* relationship 1..1 MS
* relationship ^short = "患者に対するこの家族の関係"
* relationship ^definition = "患者に対するこの家族の関係"
* relationship.coding 1..1 MS
* relationship.coding.system 1..1 MS
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode" (exactly)
* relationship.coding.code 1..1 MS
* relationship.coding.display 0..1 MS

* sex 0..1 MS
* sex.coding 1..1 MS
* sex.coding.system 1..1 MS
* sex.coding.system = "http://hl7.org/fhir/administrative-gender" (exactly)
* sex.coding.display 0..1 MS   // male | female | other | unknown

* age[x] 0..1 MS
* age[x] ^short = "この家族の年齢。"
* age[x] ^definition = "この家族の年齢。"

* estimatedAge  0..1 MS
* estimatedAge ^short = "上記年齢は（計算やアルゴリズムによる）推定値によるものであれば true、それ以外は false。"

* deceased[x]  0..1 MS
* deceased[x] ^short = "この家族が死亡しているかどうか。"
* deceased[x] ^definition = "家族が死亡している場合に、その真偽、年齢、時期などのいずれかひとつの要素で記述する。"

* note 0..* MS
* note ^short = "この家族に関する一般的な情報のテキスト記述。"
* note ^definition = "この家族に関する一般的な情報のテキスト記述。"

* condition 0..* MS
* condition ^short = "家族が持っていた重要な健康状態（家族歴に記述すべき疾病等。複数記述できる。"
* condition ^definition = "家族が持っていた重要な健康状態（家族歴に記述すべき疾病等）。複数記述できる。"
* condition.code 1..1 MS
* condition.code ^short = "疾病コード情報またはテキスト情報"
* condition.code ^definition = "疾病コード情報またはテキスト情報"
* condition.code.coding 0..1 MS
* condition.code.text 0..1 MS
* condition.code.text ^short = "疾病のテキスト情報（コードにより十分表現できない場合などに使用）"
* condition.code.text ^definition = "疾病のテキスト情報（コードにより十分表現できない場合などに使用）"

* condition.onsetAge 0..1 MS
* condition.onsetAge ^short = "その家族における疾病の（発症）年齢。"
* condition.onsetAge ^definition = "その家族における疾病の（発症）年齢。"











