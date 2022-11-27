Profile:        JP_Condition_eClinicalSummary
Parent:			JP_Condition
Id:             JP-Condition-eClinicalSummary
Description:    "Dummy for JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

Profile:        JP_AllergyIntolerance_eClinicalSummary
Parent:			JP_AllergyIntolerance
Id:             JP-AllergyIntolerance-eClinicalSummary
Description:    "Dummy for JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_AllergyIntolerance_eClinicalSummary"
* ^status = #active
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text 0..1 MS
* text.status ^short = "generated"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.status = #generated
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
* identifier 0..1 MS
* identifier.system 1..1 MS
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value 1..1 MS
* clinicalStatus   0..1 MS
* clinicalStatus   ^short = "臨床的状態のステータス。"
* clinicalStatus    ^definition = "active | inactive | resolved のいすれか（現存、非現存、解消）"
* verificationStatus    0..1 MS
* verificationStatus    ^short = "入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。"
* verificationStatus    ^definition = "unconfirmed | confirmed | refuted | entered-in-error  のいずれか（未確認、確認ずみ、否定、エラー）"
* type 0..1  MS
* type ^short = "副反応の生理的なメカニズムの種類（アレルギーによるものか不耐性によるものかどうか）"
* type ^definition = "コード表：\"http://hl7.org/fhir/allergy-intolerance-type\" から　allergy | intolerance のいずれか（アレルギー反応、不耐性反応）"
* category 0..1 MS
* category ^short = "特定された原因物質のカテゴリ"
* category ^definition = "コード表：\"http://hl7.org/fhir/allergy-intolerance-category\" から　food | medication | environment | biologic　のいずれか　（食物、医薬品、環境、生物学的）"
* criticality 0..1 MS
* criticality ^short = "潜在的な臨床的危険性、致命度"
* criticality ^definition = "コード表：\"http://hl7.org/fhir/allergy-intolerance-criticality\" から　low | high | unable-to-assess　のいずれか（低、高、評価不能）"
* code  1..1 MS
* code  ^short = "アレルギー・不耐反応の対象物の情報。"
* code  ^definition = "jpfhir.jpでのallergy-substanceコード表のコードを使用する。コード化できない場合には、text要素にフリー文字列で記述してもよい。"
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


Profile:        JP_Observation_Common_eClinicalSummary
Parent:			JP_Observation_Common
Id:             JP-Observation-eClinicalSummary
Description:    "Dummy for JP-Core"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Observation_Common_eClinicalSummary"

Profile:        JP_DocumentReference_CDAdocument
Parent:			JP_DocumentReference
Id:             JP-DocumentReference-CDAdocument
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_DocumentReference_CDAdocument"

Profile:        JP_DocumentReference
Parent:			DocumentReference
Id:             JP-DocumentReference
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DocumentReference"

Profile:        JP_DocumentReference_eClinicalSummary
Parent:			JP_DocumentReference
Id:             JP-DocumentReference-eClinicalSummary
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_DocumentReference_eClinicalSummary"

Profile:        JP_FamilyMemberHistory
Parent:			FamilyMemberHistory
Id:             JP-FamilyMemberHistory-eClinicalSummary
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_FamilyMemberHistory_eClinicalSummary"

Profile:        JP_Immunization
Parent:			Immunization
Id:             JP-Immunization
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Immunization"

Profile:        JP_Immunization_eClinicalSummary
Parent:			JP_Immunization
Id:             JP-Immunization-eClinicalSummary
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Immunization_eClinicalSummary"


Profile:        JP_CarePlan_eClinicalSummary
Parent:			JP_CarePlan
Id:             JP-CarePlan-eClinicalSummary
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_CarePlan_eClinicalSummary"
* ^status = #draft
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text 0..1 MS
* text.status ^short = "generated"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.status = #generated
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
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

Profile:        JP_CarePlan
Parent:			CarePlan
Id:             JP-CarePlan
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_CarePlan"

Profile:        JP_MedicationStatement
Parent:			MedicationStatement
Id:             JP-MedicationStatement
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement"

Profile:        JP_Procedure_eClinicalSummary
Parent:			JP_Procedure
Id:             JP-Procedure-eClinicalSummary
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Procedure_eClinicalSummary"


Profile:        JP_DeviceUseStatement
Parent:			DeviceUseStatement
Id:             JP-DeviceUseStatement
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DeviceUseStatement"

Profile:        JP_DeviceUseStatement_eClinicalSummary
Parent:			JP_DeviceUseStatement
Id:             JP-DeviceUseStatement-eClinicalSummary
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_DeviceUseStatement_eClinicalSummary"
    

Profile:        JP_Device
Parent:			Device
Id:             JP-Device
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Device"


Profile:        JP_Consent
Parent:			Consent
Id:             JP-Consent
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Consent"

Profile:        JP_Consent_eClinicalSummary
Parent:			JP_Consent
Id:             JP-Consent-eClinicalSummary
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Consent_eClinicalSummary"

Profile:        JP_ResearchSubject
Parent:			ResearchSubject
Id:             JP-ResearchSubject
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ResearchSubject"

Profile:        JP_ResearchStudy
Parent:			ResearchStudy
Id:             JP-ResearchStudy
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ResearchStudy"


Profile:        JP_ResearchSubject_eClinicalSummary
Parent:			JP_ResearchSubject
Id:             JP-ResearchSubject-eClinicalSummary
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_JResearchSubject_eClinicalSummary"

Profile:        JP_RelatedPerson
Parent:			RelatedPerson
Id:             JP-RelatedPerson
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_RelatedPerson"

Profile:        JP_Binary
Parent:			Binary
Id:             JP-Binary
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Binary"
