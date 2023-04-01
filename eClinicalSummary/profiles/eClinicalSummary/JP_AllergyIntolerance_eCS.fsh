Profile:        JP_AllergyIntolerance_eClinicalSummary
Parent:			JP_AllergyIntolerance
Id:             JP-AllergyIntolerance-eClinicalSummary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_AllergyIntolerance_eClinicalSummary"
* ^status = #active
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text ^definition = "本リソースをテキストで表現したものを入れてもよい。入れる場合には、以降のリソースからシステムにより自動生成されたものに限ること。"
* text 0..1 MS
* text.status ^short = "generated"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.status = #generated
* text.div ^definition = "本リソースの構造化情報から自動生成したテキスト表現をいれてもよい。入れる場合には、以降のリソースからシステムにより自動生成されたものに限ること。\\\\r\\\\nXHTML形式。"

* identifier 0..1 MS
* identifier.system 1..1 MS
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value 1..1 MS

* clinicalStatus   0..1 MS
* clinicalStatus   ^short = "臨床的状態のステータス。"
* clinicalStatus    ^definition = "active | inactive | resolved のいすれか（現存、非現存、解消）system=http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"

* verificationStatus    0..1 MS
* verificationStatus    ^short = "入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。"
* verificationStatus    ^definition = "unconfirmed | confirmed | refuted | entered-in-error  のいずれか（未確認、確認ずみ、否定、エラー）　system=http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"

* type 0..1  MS
* type ^short = "副反応の生理的なメカニズムの種類（アレルギーによるものか不耐性によるものかどうか）"
* type ^definition = "記述する場合は、コード表：\"http://hl7.org/fhir/allergy-intolerance-type\" から　allergy | intolerance のいずれか（アレルギー反応、不耐性反応）"
* category 0..1 MS
* category ^short = "特定された原因物質のカテゴリ。記述を可能な限り推奨する。"
* category ^definition = "コード表：\"http://hl7.org/fhir/allergy-intolerance-category\" から　food | medication | environment | biologic　のいずれか　（食物、医薬品、環境、生物学的）"
* criticality 0..1 MS
* criticality ^short = "潜在的な臨床的危険性、致命度"
* criticality ^definition = "記述する場合は、コード表：\"http://hl7.org/fhir/allergy-intolerance-criticality\" から　low | high | unable-to-assess　のいずれか（低、高、評価不能）"
* code  1..1 MS
* code  ^short = "アレルギー・不耐反応の対象物の情報。アレルギー・不耐反応の対象物の情報。"
* code  ^definition = "jp-coreで定めるallergy-substanceコード表のコードを使用を推奨する。コード化できない場合には、code.text のみで記述する。使用するコード表（推奨）：http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS 　（食物アレルギー）、http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CS　（医薬品アレルギー）、http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyNonFoodNonMedicationAllergen_CS　（その他のアレルギー）"
* code from JP_AllergyIntolerance_VS (preferred)
* code.text 1..1 MS
* code.text ^short = "アレルギー情報をフリーテキストで記述した内容"
* patient 1..1 MS
* encounter 0..1 MS
* onset[x] 0..1 MS
* recordedDate 0..1 MS
* asserter 0..1 MS
* lastOccurrence  0..1 MS
* note  0..1 MS
* reaction 0..1 MS

