
// ===============================================
//  JP_MedicationDosage_eCS 定義
//  DateType 定義 JP_MedicationDosageからの派生定義
// ===============================================

Profile: JP_MedicationDosage_eCS
Parent: JP_MedicationDosage
Id: jp-medicationdosage-eCS
Title: "eCS:JP_MedicationRequest_eCS Dosageデータタイプ"
Description: "eCS 診療情報・サマリー汎用 JP_MedicationRequest_eCS のdosageInstruction要素で使用するDosageデータタイプ"

* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosage_eCS"
* ^status = #active
* ^date = "2023-10-08"
// * extension contains
//     JP_MedicationDosage_PeriodOfUse named periodOfUse ..1 and
//     JP_MedicationDosage_UsageDuration named usageDuration ..1
// timing

//----
* extension[periodOfUse] 1..1 MS
* extension[periodOfUse].valuePeriod  1..1 MS
* extension[periodOfUse].valuePeriod ^definition = "投与開始日を明示するために使用する拡張「PeriodOfUse」。投与開始日を明示しない処方の場合には、処方箋発行日を投与開始日として設定する。３文書６情報の作成においては、本要素を必須とする。\r\n投与期間の終了日は記述しない。これは例えば隔日投与の場合に、終了日が服用しない日となり紛らわしいためである。"
* extension[periodOfUse].valuePeriod.start 1..1 MS

* extension[usageDuration] 0..1 MS
* extension[usageDuration] ^definition = "隔日投与などで実投与日数と処方期間が異なる場合に用いられる。\r\n実際に服用する日数を記述する。"

* text 1..1 MS
* text ^definition = "JP Coreでは必須。フリーテキストの用法指示。"
* text ^comment = "dosageInstructionが表す処方指示の文字列表現。\r\n例）\"内服・経口・１日３回朝昼夕食後　１回１錠　７日分\""

* additionalInstruction MS
* additionalInstruction ^definition = "補足的な処方指示。\r\n本仕様では、不均等投与を1日用法として記載する場合に、各回ごとのJAMI補足補足用法コードを記述するために使用する。不均等な投与指示の場合には、additionalInstruction要素に、1 日の投与回数分だけ繰り返し、JAMI補足用法コードを使用し記述する。\r\nまた、隔日投与、曜日指定投与の場合にも、JAMI補足補足用法コードを使用して記述する。 \r\n本要素は繰り返し記述が可能であり、どのように薬剤を内服するかについての患者への補足指示（たとえば、「食事と一緒に」や「30分から1時間前に内服」）や薬剤についての注意書き（たとえば、「眠くなることがある」や「日光や紫外線が皮膚にあたららないようにすること」）なども記述するのに使用できる。"
* additionalInstruction.coding 1..* MS
* additionalInstruction.coding.system 1..1 MS
* additionalInstruction.coding.system ^definition = "JAMI補足用法８桁コードを識別するURI(\"http://jami.jp/CodeSystem/MedicationUsageAdditiona\")。やむを得ず施設固有コードを使用する場合には、"http://jpfhir.jp/fhir/clins/CodeSystem/MedicationUsageAdditional/医療機関10桁コード"を設定する。"
* additionalInstruction.coding.code 1..1 MS
* additionalInstruction.coding.code ^definition = "JAMI 補⾜⽤法コード８桁を指定する。"
* additionalInstruction.coding.display 0.. MS
* additionalInstruction.coding.display ^definition = "コードの表示名。\r\n例）\"不均等・１回目・４錠\""
* additionalInstruction.text 1..1 MS
* additionalInstruction.text ^definition = "additionalInstruction要素に、1 日の服用回数分だけ繰り返し、JAMI補足用法コードを使用し記述する仕様であるが、コード化できるかどうかにかかわらず常にテキストでも記述する。"

* timing 1..1 MS
* timing ^short = "投与タイミングや投与期間と期間中の投与用法を記録する。"
* timing ^definition = "投与期間と期間中の投与用法を指定する場合には通常、code子要素とrepeant子要素とで記述する。投与タイミングを直接具体的な日時で指定する場合には、event子要素を使用することができる。"
* timing.event MS
* timing.event ^short = "投与タイミングの具体的な日時"
* timing.event ^definition = "投与タイミングを具体的な日時で指定する場合に使用する。複数回の指定日で指示する場合には、本要素を繰り返す。"

* timing.repeat MS
* timing.repeat ^short = "投与期間と期間中の投与の繰り返し方法を記述する要素。"
* timing.repeat ^definition = "このrepeat子要素で投与期間の全日数、code子要素でこの期間中の投与方法を記述する。"

* timing.repeat.boundsDuration MS
* timing.repeat.boundsDuration ^short = "投薬期間（投与開始日から投与終了日まで）の全日数。"
* timing.repeat.boundsDuration ^definition = "投薬期間（投与開始日から投与終了日まで）の全日数。実投与（投与）日数ではないことに注意する。すなわち、実際に投与しない日も１日と数える。詳細は処方情報HL７FHIR記述仕様も参照。なお、この実投与（投与）日数を別に記述したい場合には、実投与日数を明示したい場合に使用する拡張を使用して記述すること。"

* timing.code 0.. MS
* timing.code ^short = "用法"
* timing.code ^definition = "用法。できるかぎJAMI標準用法コードによりコード化をすることを推奨する。コード化の有無にかかわらず、用法の完全な文字列をtext子要素に設定する。服用タイミングなどを表す用法をJAMI標準用法コード16桁コードで記述する。"
* timing.code.coding 0..1 MS
* timing.code.coding ^definition = "JAMI標準用法コードによりコード化することを推奨する。詳細は処方情報HL７FHIR記述仕様も参照すること。施設固有のコード化による記述も可能であるが、できるかぎり、JAMI標準用法コードと併用することが望ましい。"
* timing.code.coding.system 1..1 MS
* timing.code.coding.system ^definition = "JAMI標準用法の場合にはJAMI標準用法16桁コードを識別するURI（\"http://jami.jp/CodeSystem/MedicationUsage\"）。やむを得ず施設固有コードを使用する場合には、\"http://jpfhir.jp/fhir/clins/CodeSystem/MedicationUsage/医療機関10桁コード\"を設定する。"

* timing.code.coding.code ^short = "用法コード"
* timing.code.coding.code 1..1 MS
* timing.code.coding.code ^definition = "用法コード。\r\n例）\"1013044400000000\""
* timing.code.coding.display ^short = "用法コードに対応する表示名。"
* timing.code.coding.display 0..1 MS
* timing.code.coding.display ^definition = "用法コードに対応する表示名。\r\n例）\"内服・経口・１日３回朝昼夕食後\""

* timing.code.text 1..1 MS
* timing.code.text ^short = "用法のコード化の有無にかかわらず、用法の完全な文字列を設定する。"
* timing.code.text ^definition = "用法のコード化の有無にかかわらず、用法の完全な文字列を設定する。"

* asNeededBoolean MS
* site MS
* route MS
* method MS

* doseAndRate MS
* doseAndRate ^definition = "投与量を記録する。
内服１回量、外用１回量は、doseAndRate.doseQuantityに記述する。処方期間の中で 1 日量が常に一定となる場合場合は、内服１日量、外用１日量は、doseAndRate.rateRatioの分子で指定する。
外用の全量指定（２本など）の場合は、調剤量として、MedicationRequestリソースのdispenseRequest.quantity 要素に、SimpleQuantity 型で記録するので、その1回量を併せて指定するのでなければこの要素は出現しない。"

* doseAndRate.type 1..1 MS
* doseAndRate.type ^definition = "力価区分。力価区分コード。\r\n本要素は、安全性のため省略せずに必須とする。\r\n用量は製剤量で記述することを基本とするが、必要に応じて原薬量指定も可能とする。"
* doseAndRate.type ^comment = ""
* doseAndRate.type ^requirements = ""

* doseAndRate.type.coding 1..*
* doseAndRate.type.coding.system 1..1 MS
* doseAndRate.type.coding.system ^definition = "力価区分コードのコード体系を識別するURI。固定値。\r\n厚生労働省電子処方箋 CDA 記述仕様　第１版別表４を準用。"
* doseAndRate.type.coding.code 1..1 MS
* doseAndRate.type.coding.code ^definition = "力価区分コード（1：製剤量　2：原薬量）"
* doseAndRate.type.coding.display 1..1 MS
* doseAndRate.type.coding.display ^definition = "力価区分コードの表示名（1：製剤量　2：原薬量）"

* doseAndRate.dose[x] ^definition = "1回投与量。\r\n用量は、1回投与量の記録を基本とし、MedicationRequestリソースの doseAndRate.doseQuantity要素 にSimpleQuantity型で記述する。単位コードには、医薬品単位略号（urn:oid:1.2.392.100495.20.2.101）を使用する。内服、外用ともに１回投与量を指定する場合にはこの要素を使用する。"
* doseAndRate.dose[x] 0..1 MS
* doseAndRate.doseQuantity ^comment = ""
* doseAndRate.doseQuantity.value 1..1 MS
* doseAndRate.doseQuantity.unit 1..1 MS
* doseAndRate.doseQuantity.system 1..1 MS
* doseAndRate.doseQuantity.system ^definition = "医薬品単位略号を識別するOID。固定値\"urn:oid:1.2.392.100495.20.2.101\"。\r\n厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。"
* doseAndRate.doseQuantity.code 1..1 MS
* doseAndRate.doseQuantity.code ^definition = "医薬品単位略号。\r\n例）"

* doseAndRate.rateRatio 0..1 MS
* doseAndRate.rateRatio ^short = "1日投与量を表す"
* doseAndRate.rateRatio ^definition = "1日投与量を表す。処方期間の中で 1 日量が常に一定となる場合には、1 回量に加えて 1 日量の記録も可能とし、rateRatio 要素に Ratio 型で記録す
る。Ratio 型は比を扱うデータ型で、分母にあたるrateRatio.denominator 要素には、投与量の基準となる期間、つまり、1 日量の場合は「1 日」を Quantity 型で指定する。単位には、単位コードUCUM（http://unitsofmeasure.org）で定義されている「日」を表す単位コード「d」を使用する。分子にあたる rateRatio.numerator 要素には、1 回量と同様の記法で、1 日投与量を Quantity 型で指定する。内服、外用ともに１日量を指定する場合にはこの要素を使用する。doseAndRate.typeで指定される力価区分に対応した量であることが必須である。\r\n例）１日３錠　の場合、 rateRatio.numerator.value=3  、 rateRatio.numerator.unit=\"錠\" 、　、 rateRatio.numerator.system=\"urn:oid:1.2.392.100495.20.2.101\" 、rateRatio.numerator.code=\"TAB\""

* doseAndRate.rateRatio.numerator 1..1 MS
  * insert relative_short_definition("1日投与量の分子の情報を表す。")
* doseAndRate.rateRatio.numerator.value 1..1 MS
  * insert relative_short_definition("1日投与量")
* doseAndRate.rateRatio.numerator.unit 1..1 MS
  * insert relative_short_definition("投与量の単位。")
* doseAndRate.rateRatio.numerator.system 1..1 MS
* doseAndRate.rateRatio.numerator.system ^short = "投与量の単位。"
* doseAndRate.rateRatio.numerator.system ^definition = "医薬品単位略号を識別するOID。固定値 \"urn:oid:1.2.392.100495.20.2.101\"。\r\n厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* doseAndRate.rateRatio.numerator.code 1..1 MS
  * insert relative_short_definition("医薬品単位略号。")

* doseAndRate.rateRatio.denominator 1..1 MS
  * insert relative_short_definition("1日投与量の分母である「1日」を表す。混乱を避けるため、「1日」以外の分母は指定しないこと。")
* doseAndRate.rateRatio.denominator.value 1..1 MS
  * insert relative_short_definition("分母である「1日」の日数「1」")
* doseAndRate.rateRatio.denominator.unit 1..1 MS
  * insert relative_short_definition("分母である「1日」の単位「日」")
* doseAndRate.rateRatio.denominator.system 1..1 MS
* doseAndRate.rateRatio.denominator.system ^short = "UCUM単位コードを識別するURI。"
* doseAndRate.rateRatio.denominator.system ^definition = "UCUM単位コードを識別するURI。固定値 \"http://unitsofmeasure.org\"。"
* doseAndRate.rateRatio.denominator.code 1..1 MS
  * insert relative_short_definition("「日」を表すUCUM単位コード。\"d\"")

