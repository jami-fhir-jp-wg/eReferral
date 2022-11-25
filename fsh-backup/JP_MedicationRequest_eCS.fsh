Profile: JP_MedicationRequest_eClinicalSummary
Parent: JP_MedicationRequest
Id: JP-MedicationRequest-eClinicalSummary
Description: "処方オーダ情報　JP_MedicationRequestの派生プロファイル.処方情報のままでもよいが、保険情報やオーダ情報などは不要な場合もあるので、処方情報そのものよりは"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_MedicationRequest_eClinicalSummary"
* ^status = #active
* ^date = "2022-11-07"
* text.status ^definition = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\ｓ\\nXHTML形式。"
* identifier[rpNumber] 1..1 MS
* identifier[orderInRp] 1..1 MS
* identifier[requestIdentifierCommon] ..0 MS
* identifier[requestIdentifier] ..0 MS
* medication[x] ^definition = "医薬品コードと医薬品名称。coding要素を繰り返すことでHOT9 やYJコードなど複数のコード体系で医薬品コード並記することが可能。\r\n本仕様では、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ずtext要素に格納した上で、それをコード化した情報を1個以上のcoding 要素に記述する。\r\n日本では同じ用法の複数の薬剤をひとつの処方区分とすることがある。複数の薬剤を表記するMedication Resourceのインスタンスを参照するか、codeableConceptとして、薬品コードと処方の詳細な内容を示すか既知の処方リストの中から特定の処方を選択するための属性を表すResourceにリンクされている。"
* medication[x] MS
* medication[x].coding ^slicing.discriminator.type = #value
* medication[x].coding ^slicing.discriminator.path = "system"
* medication[x].coding ^slicing.rules = #open
* medication[x].coding contains
    codingHOT7 0..1 MS and
    codingHOT9 0..1 MS and
    codingYJ 0..1 MS and
    codingGS1 0..1 MS and
    codingGeneralName 0..1 MS and
    codingLocal 0..1 MS
* medication[x].coding[codingHOT9].system 1.. MS
* medication[x].coding[codingHOT9].system = $JP_MedicationCodeHOT9_CS (exactly)
* medication[x].coding[codingHOT9].system ^definition = "HOT9コードの識別ID"
* medication[x].coding[codingHOT9].code 1.. MS
* medication[x].coding[codingHOT9].code from $JP_MedicationCodeHOT9_VS (rewuired)
* medication[x].coding[codingHOT9].code ^definition = "HOT9医薬品コード"
* medication[x].coding[codingHOT9].display 1.. MS
* medication[x].coding[codingHOT9].display ^definition = "医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。"

* medication[x].coding[codingHOT7].system 1.. MS
* medication[x].coding[codingHOT7].system = $JP_MedicationCodeHOT7_CS (exactly)
* medication[x].coding[codingHOT7].system ^definition = "HOT9コードの識別ID"
* medication[x].coding[codingHOT7].code 1.. MS
* medication[x].coding[codingHOT7].code from $JP_MedicationCodeHOT7_VS (rewuired)
* medication[x].coding[codingHOT7].code ^definition = "HOT7医薬品コード"
* medication[x].coding[codingHOT7].display 1.. MS
* medication[x].coding[codingHOT7].display ^definition = "医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。"

* medication[x].coding[codingYJ].system 1.. MS
* medication[x].coding[codingYJ].system = "urn:oid:1.2.392.100495.20.1.73" (exactly)
* medication[x].coding[codingYJ].system ^definition = "YJコードを識別するsystem値"
* medication[x].coding[codingYJ].code 1.. MS
* medication[x].coding[codingYJ].code from $JP_MedicationCodeYJ_VS (rewuired)
* medication[x].coding[codingYJ].code ^definition = "YJ(個別医薬品）コード"
* medication[x].coding[codingYJ].display 1.. MS
* medication[x].coding[codingYJ].display ^definition = "医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。"

* medication[x].coding[codingGS1].system 1.. MS
* medication[x].coding[codingGS1].system = $JP_MedicationCodeGS1_CS (exactly)
* medication[x].coding[codingGS1].system ^definition = "GS1標準の識別コードを示すsystem値"
* medication[x].coding[codingGS1].code 1.. MS
* medication[x].coding[codingGS1].code  from $JP_MedicationCodeGS1_VS (rewuired)
* medication[x].coding[codingGS1].code ^definition = "GS1標準の識別コード。医薬品コードおよび医療材料等コードとして、調剤包装単位（最少包装単位、個別包装単位）14桁のフォーマットで使用する。"
* medication[x].coding[codingGS1].display 1.. MS
* medication[x].coding[codingGS1].display ^definition = "医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。"

* medication[x].coding[codingGeneralName].system 1.. MS
* medication[x].coding[codingGeneralName].system = $JP_MedicationCodeCommon_CS (exactly)
* medication[x].coding[codingGeneralName].system ^definition = "厚生労働省保険局が定める一般処方名マスターコードを識別するcsystem値"
* medication[x].coding[codingGeneralName].code 1.. MS
* medication[x].coding[codingGeneralName].code from $JP_MedicationCodeCommon_VS (rewuired)
* medication[x].coding[codingGeneralName].code ^definition = "厚生労働省保険局が定める一般処方名マスターコード"
* medication[x].coding[codingGeneralName].display 1.. MS
* medication[x].coding[codingGeneralName].display ^definition = "医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。"

* medication[x].coding[codingLocal].system 1.. MS
* medication[x].coding[codingLocal].system = $JP_MedicationCodeLocal_CS (exactly)
* medication[x].coding[codingLocal].system ^definition = "厚生労働省保険局が定める一般処方名マスターコードを識別するcsystem値"
* medication[x].coding[codingLocal].code ^definition = "厚生労働省保険局が定める一般処方名マスターコード"
* medication[x].coding[codingLocal].code 1.. MS
* medication[x].coding[codingLocal].code ^definition = "その施設でのローカルコード"
* medication[x].coding[codingLocal].display 0.. MS
* medication[x].coding[codingLocal].display ^definition = "ローカル医薬品名称"

* medication[x].text ^definition = "入力したユーザーが見た/選択した/発したとおりの概念および・またはユーザーが意図した概念を自然言語で表現したもの。\r\n処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず設定する。"
* medication[x].text 1..1 MS

//* encounter ..0
//* supportingInformation ..0
//* requester ..0
//* performer ..0
//* performerType ..0
//* recorder ..0
//* reasonCode ..0
//* reasonReference ..0
//* instantiatesCanonical ..0
//* instantiatesUri ..0
//* basedOn ..0
//* groupIdentifier ..0
//* courseOfTherapyType ..0
//* insurance ..0

* note ..1 MS
* note ^comment = "単一の薬剤に対する調剤者に対する指示は、本要素ではなく、MedicationRequestリソースのdispenseRequest要素に対して本文書で定義した拡張「InstructionForDispense」（http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense）を使用する。\r\nまた処方箋全体の備考や指示は、Communicationリソースに記述する。\r\n患者に対する補足指示や注意や、不均等投与指示などは、 dosageInstruction.additionalInstructionで記述する。\r\n本要素は、それらでは伝えられない薬剤単位の備考や指示を記述する。"
* note.text ^definition = "備考文字列。markdown 記法により記述できる。\r\n例）”4月1日から4日間服用。2週間休薬後、4月19日から4日間服用。患者に書面にて説明済み。”"
* note.text MS

* dosageInstruction.extension ^slicing.discriminator.type = #value
* dosageInstruction.extension ^slicing.discriminator.path = "url"
* dosageInstruction.extension ^slicing.rules = #open
* dosageInstruction.extension ^min = 0
* dosageInstruction.extension MS
* dosageInstruction.extension[periodOfUse] ^min = 0
* dosageInstruction.extension[periodOfUse].value[x] ^definition = "MedicationRequestに投与期間の開始日を明示するための拡張。\r\n投与期間の終了日は記述しない。これは例えば隔日投与の場合に、終了日が服用しない日となり紛らわしいためである。"
* dosageInstruction.extension[periodOfUse] MS
* dosageInstruction.extension[usageDuration] ^definition = "隔日投与などで実投与日数と処方期間が異なる場合に用いられる。\r\n実際に服用する日数を記述する。"
* dosageInstruction.extension[usageDuration] ^min = 0
* dosageInstruction.extension[usageDuration] MS
* dosageInstruction.text ^definition = "JP Coreでは必須。フリーテキストの用法指示。\r\ndosageInstructionが表す処方指示の文字列表現。\r\n例）\"内服・経口・１日３回朝昼夕食後　１回１錠　７日分\""
* dosageInstruction.text MS
* dosageInstruction.additionalInstruction ^short = "患者に対する補足指示や注意"
* dosageInstruction.additionalInstruction ^definition = "補足的な処方指示。\r\n本仕様では、不均等投与を1日用法として記載する場合に、各回ごとのJAMI補足補足用法コードを記述するために使用する。\r\nまた、隔日投与、曜日指定投与の場合にも、JAMI補足補足用法コードを使用して記述する。"
* dosageInstruction.additionalInstruction MS
* dosageInstruction.additionalInstruction.coding 0..1 MS
* dosageInstruction.additionalInstruction.coding.code ^definition = "JAMI 補⾜⽤法コード８桁を指定する。"
* dosageInstruction.additionalInstruction.coding.code MS
* dosageInstruction.additionalInstruction.coding.display ^definition = "コードの表示名。\r\n例）\"不均等・１回目・４錠\""
* dosageInstruction.additionalInstruction.coding.display MS
* dosageInstruction.additionalInstruction.text ^definition = "dosageInstruction.additionalInstruction要素に、1 日の服用回数分だけ繰り返し、JAMI補足用法コードを使用し記述するが、その場合でも、またコード化できない場合は、明細単位の備考としてテキストで記述する。"
* dosageInstruction.additionalInstruction.text MS
* dosageInstruction.timing.event ^definition = "服用タイミングを具体的な日時で指定する場合に使用する。複数回の指定日で指示する場合には、本要素を繰り返す。"
* dosageInstruction.timing.event MS
* dosageInstruction.timing.repeat.boundsDuration.value MS
//* dosageInstruction.timing.repeat.count ..0
//* dosageInstruction.timing.repeat.countMax ..0
//* dosageInstruction.timing.repeat.duration ..0
//* dosageInstruction.timing.repeat.durationMax ..0
//* dosageInstruction.timing.repeat.durationUnit ..0
//* dosageInstruction.timing.repeat.frequency ..0
//* dosageInstruction.timing.repeat.frequencyMax ..0
//* dosageInstruction.timing.repeat.period ..0
//* dosageInstruction.timing.repeat.periodMax ..0
//* dosageInstruction.timing.repeat.periodUnit ..0
//* dosageInstruction.timing.repeat.dayOfWeek ..0
//* dosageInstruction.timing.repeat.timeOfDay ..0
//* dosageInstruction.timing.repeat.when ..0
//* dosageInstruction.timing.repeat.offset ..0
* dosageInstruction.timing.code MS
* dosageInstruction.timing.code ^short = "用法コード"
* dosageInstruction.timing.code ^definition = "服用タイミングなどを表す用法をJAMI標準用法コード16桁コードで記述することが推奨される。無理な場合には別のコード体系でもよいし、コード化できないときには文字列記述だけでもよい。"
* dosageInstruction.timing.code.text ^definition = "コード化されなかたテキストを記述する。コード化されたdisplay要素で情報が十分な場合には、本text要素は記述しない。"
* dosageInstruction.timing.code.text MS

* dosageInstruction.doseAndRate ^definition = "薬剤が投与される量。"
* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate.type ^definition = "力価区分。力価区分コード。\r\n本要素は、安全性のため省略せずに必須とする。\r\n用量は製剤量で記述することを基本とするが、必要に応じて原薬量指定も可能とする。"
* dosageInstruction.doseAndRate.type MS
* dosageInstruction.doseAndRate.type.coding.system ^definition = "力価区分コードのコード体系を識別するURI。固定値。\r\n厚生労働省電子処方箋 CDA 記述仕様　第１版別表４を準用。"
* dosageInstruction.doseAndRate.type.coding.system MS
* dosageInstruction.doseAndRate.type.coding.code ^definition = "力価区分コード（1：製剤量　2：原薬量）"
* dosageInstruction.doseAndRate.type.coding.code MS
* dosageInstruction.doseAndRate.type.coding.display ^definition = "力価区分コードの表示名（1：製剤量　2：原薬量）"
* dosageInstruction.doseAndRate.type.coding.display MS
* dosageInstruction.doseAndRate.dose[x] ^definition = "1回投与量。\r\n用量は、1回投与量の記録を基本とし、MedicationRequestリソースの dosageInstruction.doseAndRate.doseQuantity要素 にSimpleQuantity型で記述する。"
* dosageInstruction.doseAndRate.dose[x] MS
* dosageInstruction.doseAndRate.doseQuantity.system ^definition = "医薬品単位略号を識別するOID。固定値。\r\n厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* dosageInstruction.doseAndRate.doseQuantity.system MS
* dosageInstruction.doseAndRate.doseQuantity.code ^definition = "医薬品単位略号。\r\n例）"
* dosageInstruction.doseAndRate.doseQuantity.code MS
* dosageInstruction.doseAndRate.rateRatio ^definition = "単位時間内での薬剤量。JP Coreでは1 日投与量を表す。\r\n例）１日３錠　の場合、 rateRatio.numerator.value=3  、 rateRatio.numerator.unit=\"錠\" 、　、 rateRatio.numerator.system=\"urn:oid:1.2.392.100495.20.2.101\" 、rateRatio.numerator.code=\"TAB\""
* dosageInstruction.doseAndRate.rateRatio MS
* dosageInstruction.doseAndRate.rateRatio.numerator.value ^definition = "1 日投与量。"
* dosageInstruction.doseAndRate.rateRatio.numerator.value MS
* dosageInstruction.doseAndRate.rateRatio.numerator.system ^definition = "医薬品単位略号を識別するOID。固定値。\r\n厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* dosageInstruction.doseAndRate.rateRatio.numerator.system MS

* dispenseRequest 1.. MS
* dispenseRequest ^definition = "調剤情報。\r\n薬剤オーダー(MedicationRequest, Medication Prescription, Medication Orderなどとしても表現される）や薬剤オーダーとの一部としての薬剤の払い出しあるいは提供。この情報はオーダーとしてかならず伝えられるというわけではないことに注意。薬剤部門で調剤・払い出しを完了するための施設（たとえば病院）やシステムでのサポートに関する設定をしてもよい。"
* dispenseRequest.extension ^slicing.discriminator.type = #value
* dispenseRequest.extension ^slicing.discriminator.path = "url"
* dispenseRequest.extension ^slicing.rules = #open
* dispenseRequest.extension ^min = 0
* dispenseRequest.extension[expectedRepeatCount] ^min = 0
* dispenseRequest.extension[expectedRepeatCount] MS
* dispenseRequest.quantity.value ^definition = "調剤量。精度を含めた値が暗示される。\r\n例）１日３錠で７日分の場合、この要素には21 が設定される。"
* dispenseRequest.quantity.value MS
* dispenseRequest.quantity.system ^definition = "医薬品単位略号を識別するURL。urn:oid:1.2.392.200119.4.403.1で固定される。\r\n厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* dispenseRequest.quantity.system ^comment = "医薬品単位略号はひとつのリソース記述のなかで１種類のコード体系に統一すること。"
* dispenseRequest.quantity.system MS
* dispenseRequest.quantity.code ^comment = "厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* dispenseRequest.quantity.code ^requirements = "どのような形式であっても医薬品単位略号はひとつのリソース記述のなかで１種類のコード体系に統一すること。"
* dispenseRequest.quantity.code MS
* dispenseRequest.expectedSupplyDuration.value ^definition = "調剤日数。\r\n例）１日３錠で７日分の場合、この要素には 7が設定される。"
* dispenseRequest.expectedSupplyDuration.value MS

* substitution.allowed[x].coding.system ^definition = "後発品変更不可コードを識別するURI。固定値。\r\n厚生労働省電子処方箋CDA規格第１版　別表８ 後発品変更不可コード 　OID: 1.2.392.100495.20.2.41"
* substitution.allowed[x].coding.system MS
* substitution.allowed[x].coding.code ^definition = "後発品変更不可コード。\r\n不可の場合には1を設定する。\r\n厚生労働省電子処方箋CDA規格第１版　別表８ 後発品変更不可コード 　\r\n0 変更可　（省略可）\r\n1 後発品変更不可\r\n2 剤形変更不可\r\n3 含量規格変更不可"
* substitution.allowed[x].coding.code MS
* substitution.allowed[x].coding.display ^definition = "後発品変更不可コード表示名。\r\n0 変更可\r\n1 後発品変更不可\r\n2 剤形変更不可\r\n3 含量規格変更不可"
* substitution.allowed[x].coding.display MS

* substitution.reason ^definition = "オーダー情報では、後発品変更不可の理由。"
* substitution.reason MS
* substitution.reason.text ^definition = "理由を表す文字列。\r\n例）　\"患者からの強い要望により\""
* substitution.reason.text MS
//* priorPrescription ..0
//* detectedIssue ..0
//* eventHistory ..0